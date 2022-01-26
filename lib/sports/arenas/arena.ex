defmodule Sports.Arenas.Arena do
  use Ecto.Schema
  import Ecto.Changeset

  schema "arenas" do
    field :closes_at, :integer, null: false
    field :opens_at, :integer, null: false
    field :name, :string, null: false
    field :price_per_hour, :integer, null: false
    embeds_many :address, Sports.Arenas.Address
    embeds_many :phone_number, Sports.Arenas.PhoneNumber

    timestamps()
  end

  @doc false
  def changeset(arena, attrs) do
    arena
    |> cast(attrs, [:opens_at, :closes_at, :name, :price_per_hour])
    |> validate_required([:opens_at, :closes_at, :name, :price_per_hour])
    |> cast_embed(:address, required: true)
    |> cast_embed(:phone_number, required: true)
  end
end
