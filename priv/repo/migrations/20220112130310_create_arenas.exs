defmodule Sports.Repo.Migrations.CreateArenas do
  use Ecto.Migration

  def change do
    create table(:arenas) do
      add :opens_at, :integer , null: false
      add :closes_at, :integer , null: false
      add :name, :string , null: false
      add :price_per_hour, :integer , null: false
      add :address, :map, default: %{}
      add :phone_number, :map, default: %{}
      timestamps()
    end
  end
end
