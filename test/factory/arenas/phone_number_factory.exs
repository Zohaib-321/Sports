defmodule Sports.Factory.Arenas.PhoneNumberFactory do
  use ExMachina.Ecto, repo: Sports.Repo

  def arena_factory do
    %Sports.Arenas.PhoneNumber{

      phone_number: %{country_code: +92, area_code: 03, number: 0909090}
      phone_number = build(:phone_number)

    }
  end
end
