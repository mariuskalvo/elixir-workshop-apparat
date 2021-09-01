defmodule SupervisorsTest do
  use ExUnit.Case
  doctest Supervisors

  test "greets the world" do
    assert Supervisors.hello() == :world
  end
end
