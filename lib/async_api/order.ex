defmodule AsyncApi.Order do
  use Ecto.Schema
  import Ecto.Changeset
  alias AsyncApi.Order

  schema "orders" do
    field :content, :string
    field :status, :string

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content, :status])
  end
end