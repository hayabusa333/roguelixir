defmodule Roguelixir.PlayerCalacter do
  alias Roguelixir.{PlayerCalacter, DungeonMap}

  @enforce_keys [:row, :col]
  defstruct [:row, :col, :place]

  def new do
    {:ok, %PlayerCalacter{row: 0, col: 0}}
  end

  def dive_dungeon(player, dungeon) do
    {:ok, %PlayerCalacter{player | place: dungeon}}
  end
end
