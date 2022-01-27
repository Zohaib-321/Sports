defmodule Sports.ArenasTest do
  @moduledoc false

  use Sports.DataCase, async: true
  alias Sports.Arenas
  alias Sports.Arenas.Arena
  alias Sports.Arenas.Address
  alias Sports.Arenas.PhoneNumber

  describe ".changeset" do
    @valid_attrs %{
      opens_at: 5,
      closes_at: 6,
      name: "umer",
      price_per_hour: 1500,
      address: [
        %{street: "98ji", city: "ohio", state: "punjab", country: "Panama"}
      ],
      phone_number: [
        %{country_code: 85, area_code: 03, number: 98_989_999}
      ]
    }

    @invalid_attrs %{
      opens_at: nil,
      closes_at: nil,
      name: nil,
      price_per_hour: nil,
      address: %{street: nil, city: nil, state: nil, country: nil},
      phone_number: %{country_code: nil, area_code: nil, number: nil}
    }

    # 1

    test "it requires name to be required" do
      changeset = Arena.changeset(%Arena{}, Map.delete(@valid_attrs, :name))

      assert changeset.errors == [name: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    # 2

    test "it requires opens_at to be required" do
      changeset = Arena.changeset(%Arena{}, Map.delete(@valid_attrs, :opens_at))

      assert changeset.errors == [opens_at: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    # 3

    test "it requires closes_at to be required" do
      changeset = Arena.changeset(%Arena{}, Map.delete(@valid_attrs, :closes_at))

      assert changeset.errors == [closes_at: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    # 4

    test "it requires price_per_hour to be required" do
      changeset = Arena.changeset(%Arena{}, Map.delete(@valid_attrs, :price_per_hour))

      assert changeset.errors == [price_per_hour: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    #5

    test " it create_arena with valid data " do
      changeset = Arena.changeset(%Arena{}, @valid_attrs)

      assert changeset.changes.closes_at == 6
      assert changeset.changes.opens_at == 5
      assert changeset.changes.name == "umer"
      assert changeset.changes.price_per_hour == 1500
      assert changeset.valid?
    end

    test "create_arena with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Arenas.create_arena(@invalid_attrs)
    end
  end
end
