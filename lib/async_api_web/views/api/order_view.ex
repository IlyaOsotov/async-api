defmodule AsyncApiWeb.Api.OrderView do
  use AsyncApiWeb, :view

  def render("create.json", %{order: order}) do
    %{
      id: order.id,
      status: order.status,
      content: order.content
    }
  end

  def render("show.json", %{order: order}) do
    %{
      id: order.id,
      status: order.status,
      content: order.content
    }
  end
end
