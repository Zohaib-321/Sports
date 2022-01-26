defmodule Sports.ArenasFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sports.Arenas` context.
  """

  @doc """
  Generate a arena.
  """
  def arena_fixture(attrs \\ %{}) do
    {:ok, arena} =
      attrs
      |> Enum.into(%{
        Close_at: 42,
        Opens_at: 42,
        Phone_Number: 42,
        Price_per_hour: 42
      })
      |> Sports.Arenas.create_arena()

    arena
  end
end
