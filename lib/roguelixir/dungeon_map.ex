defmodule Roguelixir.DungeonMap do
  alias Roguelixir.DungeonMap

  @enforce_keys [:row, :col, :dungeon]
  defstruct [:row, :col, :dungeon]

  def new(dungeon) do
    {:ok, %DungeonMap{row: 100, col: 100, dungeon: dungeon}}
  end
end
