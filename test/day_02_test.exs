defmodule Day02Test do
  use ExUnit.Case, async: true
  doctest Day02

  test "part_1" do
    result = Day02.part_1

    assert result == 17189
  end

  test "part_2" do
    result = Day02.part_2

    assert result == 13490
  end
end
