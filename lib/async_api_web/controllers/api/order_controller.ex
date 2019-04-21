defmodule AsyncApiWeb.Api.OrderController do
  use AsyncApiWeb, :controller

  def create(conn, params) do
    render(conn, "create.json")    
  end

  def show(conn, params) do
    render(conn, "show.json")
  end
end
