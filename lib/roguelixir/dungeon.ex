defmodule Roguelixir.Dungeon do
  alias __MODULE__

  defstruct [:name]

  def new(name) do
    {:ok, %Dungeon{name: name}}
  end
end
