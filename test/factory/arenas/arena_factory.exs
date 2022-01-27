defmodule Sports.Factory.Arenas.ArenaFactory do
  use ExMachina.Ecto, repo: Sports.Repo

  def arena_factory do
    %Sports.Arenas.Arena{
      name: "test",
      opens_at: 6,
      closes_at: 6,
      price_per_hour: 1550
    }
  end
end
