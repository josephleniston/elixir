defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "division" do
    {:ok, result} = HelloWorld.div(4, 2)
    assert result == 2.0
  end

  test "division by zero" do
    {:error, err} = HelloWorld.div(2, 0)
    assert err == "Attempted division by zero"
  end

end
