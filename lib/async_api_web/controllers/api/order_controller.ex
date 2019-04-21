defmodule AsyncApiWeb.Api.OrderController do
  use AsyncApiWeb, :controller
  alias AsyncApi.Order

  def create(conn, _params) do
    changeset = Order.changeset(%Order{}, %{status: "pending"})
    {_status, order} = Repo.insert(changeset)
    render(conn, "create.json", order: order)
  end

  def show(conn, %{"id" => order_id}) do
    order = Repo.get!(Order, order_id)

    render(conn, "show.json", order: order)
  end
end
