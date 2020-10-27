defmodule Roguelixir.Dungeon do
  alias __MODULE__

  defstruct [:name, :stratum, :text, :row, :col]

  def new() do
    path = Path.join(File.cwd!(), "config/yml/dungeon.yml")
    {:ok, yml_data} = YamlElixir.read_from_file(path)
    dungeon = %Dungeon{name: yml_data["dungeon1"]["name"], stratum: yml_data["dungeon1"]["stratum"], row: 100, col: 100}
    :ets.new(:roguelixir_dungeon, [:set, :protected, :named_table])
    :ets.insert(:roguelixir_dungeon, {:dungeon, dungeon})
    {:ok}
  end

  def self do
    :ets.lookup(:roguelixir_dungeon, :dungeon)[:dungeon]
  end
end
