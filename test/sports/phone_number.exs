defmodule Sports.PhoneNumberTest do
  use Sports.DataCase, async: true

  alias Sports.Arenas.PhoneNumber

  describe ".changeset/2" do
    @valid_attrs %{
      phone_number: %{country_code: +92, area_code: 03, number: 0_909_090}
    }

    @invalid_attrs %{
      phone_number: %{country_code: nil, area_code: nil, number: nil}
    }

    test "it requires country_code to be required" do
      changeset =
        PhoneNumber.changeset(
          %PhoneNumber{},
          Map.delete(@valid_attrs.phone_number, :country_code)
        )

      assert changeset.errors == [country_code: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    test "it requires area_code to be required" do
      changeset =
        PhoneNumber.changeset(%PhoneNumber{}, Map.delete(@valid_attrs.phone_number, :area_code))

      assert changeset.errors == [area_code: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end

    test "it requires number to be required" do
      changeset =
        PhoneNumber.changeset(%PhoneNumber{}, Map.delete(@valid_attrs.phone_number, :number))

      assert changeset.errors == [number: {"can't be blank", [validation: :required]}]
      refute changeset.valid?
    end
  end
end
