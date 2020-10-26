defmodule Roguelixir.Dungeon do
  alias __MODULE__

  defstruct [:name, :stratum, :text, :row, :col]

  def new(name, stratum) do
    dungeon = %Dungeon{name: name, stratum: stratum, row: 100, col: 100}
    :ets.new(:roguelixir_dungeon, [:set, :protected, :named_table])
    :ets.insert(:roguelixir_dungeon, {:dungeon, dungeon})
    {:ok}
  end

  def self do
    :ets.lookup(:roguelixir_dungeon, :dungeon)[:dungeon]
  end
end
