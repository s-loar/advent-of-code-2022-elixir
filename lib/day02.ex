defmodule Day02 do

  def part_1 do
    File.read!('./data/day02.txt')
    |> String.split( "\n", trim: true)
    |> Enum.map(&score_for_round/1)
    |> Enum.sum()
  end

  defp score_for_round(round) do
    hand_score(String.slice(round, 2, 1)) + win_score(round)
  end

  defp hand_score(my_hand) do
    case my_hand do
      "X" -> 1
      "Y" -> 2
      "Z" -> 3
    end
  end

  defp win_score(round) do
    case round do
      x when x in ["A Z", "B X", "C Y"] -> 0
      x when x in ["A X", "B Y", "C Z"] -> 3
      x when x in ["A Y", "B Z", "C X"] -> 6
    end
  end
end
