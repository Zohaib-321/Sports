defmodule Sports.Arenas do
  @moduledoc """
  The Arenas context.
  """

  import Ecto.Query, warn: false
  alias Sports.Repo

  alias Sports.Arenas.Arena

  def list_arenas do
    Repo.all(Arena)
  end

  def get_arena!(id), do: Repo.get!(Arena, id)

  def create_arena(attrs \\ %{}) do
    %Arena{}
    |> Arena.changeset(attrs)
    |> Repo.insert()
  end

  def update_arena(%Arena{} = arena, attrs) do
    arena
    |> Arena.changeset(attrs)
    |> Repo.update()
  end

  def delete_arena(%Arena{} = arena) do
    Repo.delete(arena)
  end

  def change_arena(%Arena{} = arena, attrs \\ %{}) do
    Arena.changeset(arena, attrs)
  end
end
