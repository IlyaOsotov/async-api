defmodule AsyncApiWeb.Api.OrderView do
  use AsyncApiWeb, :view

  def render("create.json", %{}) do
    %{1 => 2}
  end

  def render("show.json", %{}) do
    %{1 => 2}
  end
end
