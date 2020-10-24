defmodule Roguelixir.Dungeon do
  alias __MODULE__

  defstruct [:name, :stratum, :text]

  def new(name, stratum) do
    {:ok, %Dungeon{name: name, stratum: stratum}}
  end

  def ets_set(dungeon) do
    :ets.insert(:roguelixir_dungeon, {dungeon})
  end
end
