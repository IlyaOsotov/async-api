defmodule AsyncApi.OrderProcesser do
  alias AsyncApi.Order
  alias AsyncApi.Repo

  def call(order) do
    changeset = Order.changeset(order, %{content: "test_content"})
    Repo.update(changeset)
  end
end
