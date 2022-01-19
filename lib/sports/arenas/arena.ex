defmodule Sports.Arenas.Arena do
  use Ecto.Schema
  import Ecto.Changeset

  schema "arenas" do
    field :closes_at, :integer
    field :opens_at, :integer
    field :name, :string
    field :price_per_hour, :integer

    embeds_one :address, Sports.Arenas.Address
    embeds_one :phone_number, Sports.Arenas.PhoneNumber

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
