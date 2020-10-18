defmodule Roguelixir.PlayerCalacter do
  alias __MODULE__

  @enforce_keys [:row, :col]
  defstruct [:row, :col, :place]

  def new do
    {:ok, %PlayerCalacter{row: 0, col: 0}}
  end
end
