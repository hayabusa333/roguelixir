defmodule Roguelixir.DungeonMap do
  alias Roguelixir.DungeonMap

  @enforce_keys [:row, :col]
  defstruct [:row, :col]

  def new() do
    {:ok, %DungeonMap{row: 100, col: 100}}
  end
end
