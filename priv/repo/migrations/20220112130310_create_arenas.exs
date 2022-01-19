defmodule Sports.Repo.Migrations.CreateArenas do
  use Ecto.Migration

  def change do
    create table(:arenas) do
      add :opens_at, :integer
      add :closes_at, :integer
      add :name, :string
      add :maintenance, :boolean
      add :Price_per_hour, :integer
      add :address,  :map
      add :phone_number, :map
      timestamps()
    end
  end
end
