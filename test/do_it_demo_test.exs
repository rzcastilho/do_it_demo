defmodule DoItDemoTest do
  use ExUnit.Case
  doctest DoItDemo

  test "greets the world" do
    assert DoItDemo.hello() == :world
  end
end
