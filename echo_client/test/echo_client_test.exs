defmodule EchoClientTest do
  use ExUnit.Case
  doctest EchoClient

  test "greets the world" do
    assert EchoClient.hello() == :world
  end
end
