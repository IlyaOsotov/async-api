defmodule AsyncApi.Repo.Migrations.AddOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :content, :string
      add :status, :string

      timestamps()
    end
  end
end
