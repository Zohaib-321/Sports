defmodule Sports.AddressTest do
  alias Sports.Arenas
  use Sports.DataCase, async: true
  alias Sports.Arenas.Address

  describe ".changeset" do
    @valid_attrs %{
      address: %{street: "62-avenue", city: "lore", state: "ohio", country: "russia"}
    }

    @invalid_attrs %{
      address: %{street: nil, city: nil, state: nil, country: nil}
    }

    test "it requires street to be required" do
      changeset = Address.changeset(%Address{}, Map.delete(@valid_attrs.address, :street))

      assert changeset.errors == [street: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    test "it requires city to be required" do
      changeset = Address.changeset(%Address{}, Map.delete(@valid_attrs.address, :city))

      assert changeset.errors == [city: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    test "it requires state to be required" do
      changeset = Address.changeset(%Address{}, Map.delete(@valid_attrs.address, :state))

      assert changeset.errors == [state: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    test "it requires country to be required" do
      changeset = Address.changeset(%Address{}, Map.delete(@valid_attrs.address, :country))

      assert changeset.errors == [country: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end
  end
end
