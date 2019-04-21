defmodule AsyncApiWeb.PageController do
  use AsyncApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
