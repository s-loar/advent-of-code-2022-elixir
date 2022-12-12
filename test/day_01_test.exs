defmodule Day01Test do
  use ExUnit.Case, async: true
  doctest Day01

  test "max_calories" do
    result = Day01.max_calories

    assert result == 71780
  end

  test "top_three_sum" do
    result = Day01.top_three_sum

    assert result == 212489
  end
end
