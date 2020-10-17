defmodule RoguelixirTest do
  use ExUnit.Case
  doctest Roguelixir

  test "greets the world" do
    assert Roguelixir.hello() == :world
  end
end
