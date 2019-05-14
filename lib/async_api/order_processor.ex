defmodule AsyncApi.OrderProcessor do
  alias AsyncApi.Order
  alias AsyncApi.Repo
  alias AsyncApi.KafkaProducer

  def call(order) do
    changeset = Order.changeset(order, %{content: "test_content", status: "accepted"})
    :timer.sleep(5000)
    case Repo.update(changeset) do
      {:ok, updated_order} ->
        spawn(KafkaProducer, :send_update, [updated_order])
      {:error, _} ->
        IO.puts 'unexpected error'
    end
  end
end
