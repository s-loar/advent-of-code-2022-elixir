defmodule Day03Test do
  use ExUnit.Case, async: true
  doctest Day03

  test "part_1" do
    result = Day03.part_1

    assert result == 8401
  end

  test "part_2" do
    result = Day03.part_2

    assert result == 2641
  end
end
