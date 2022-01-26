defmodule Sports.Factory.Arenas.AddressFactory do
  use ExMachina.Ecto, repo: Sports.Repo

  def arena_factory do
    %Sports.Arenas.Address{
      address: %{street: "2nth avenue", city: "lahore", state: "punjab", country: "pakistan"},
      address = build(:address)
    }
  end
end
