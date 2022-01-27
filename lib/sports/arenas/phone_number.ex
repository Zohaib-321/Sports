defmodule Sports.Arenas.PhoneNumber do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :country_code, :integer , null: false
    field :area_code, :integer , null: false
    field :number, :integer , null: false
  end

  @doc false
  def changeset(arena, attrs) do
    arena
    |> cast(attrs, [:country_code, :area_code, :number])
    |> validate_required([:country_code, :area_code, :number])
  end
end
