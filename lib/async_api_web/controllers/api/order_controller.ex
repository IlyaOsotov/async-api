defmodule AsyncApiWeb.Api.OrderController do
  use AsyncApiWeb, :controller
  alias AsyncApi.Order
  alias AsyncApi.OrderProcessor
  alias AsyncApi.KafkaProducer

  def create(conn, _params) do
    changeset = Order.changeset(%Order{}, %{status: "pending"})
    {_status, order} = Repo.insert(changeset)
    spawn(KafkaProducer, :call, [order])
    spawn(OrderProcessor, :call, [order])
    render(conn, "create.json", order: order)
  end

  def show(conn, %{"id" => order_id}) do
    order = Repo.get!(Order, order_id)

    render(conn, "show.json", order: order)
  end
end
