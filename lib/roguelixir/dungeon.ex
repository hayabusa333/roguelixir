defmodule Roguelixir.Dungeon do
  alias __MODULE__

  defstruct [:name, :stratum, :text]

  def new(name, stratum) do
    dungeon = %Dungeon{name: name, stratum: stratum}
    :ets.new(:roguelixir_dungeon, [:set, :protected, :named_table])
    :ets.insert(:roguelixir_dungeon, {:dungeon, dungeon})
    {:ok}
  end

  def self do
    :ets.lookup(:roguelixir_dungeon, :dungeon)[:dungeon]
  end
end
