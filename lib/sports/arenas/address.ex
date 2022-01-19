defmodule Sports.Arenas.Address do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :street, :string
    field :city, :string
    field :state, :string
    field :country, :string
  end

  @doc false
  def changeset(arena, attrs) do
    arena
    |> cast(attrs, [:street, :city, :state, :country])
    |> validate_required([:street, :city, :state, :country])
  end
end
