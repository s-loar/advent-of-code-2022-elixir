defmodule Day02 do

  def part_1 do
    File.read!('./data/day02.txt')
    |> String.split( "\n", trim: true)
    |> Enum.map(&score_for_round/1)
    |> Enum.sum()
  end

  def part_2 do
    File.read!('./data/day02.txt')
    |> String.split( "\n", trim: true)
    |> Enum.map(&expectation_score/1)
    |> Enum.sum()
  end

  defp expectation_score(round) do
    case round do
      # X is to loose
      "A X" -> 0 + 3
      "B X" -> 0 + 1
      "C X" -> 0 + 2
      # Y is to tie
      "A Y" -> 3 + 1
      "B Y" -> 3 + 2
      "C Y" -> 3 + 3
      # Z is to win
      "A Z" -> 6 + 2
      "B Z" -> 6 + 3
      "C Z" -> 6 + 1
    end
  end

  defp score_for_round(round) do
    hand_score(String.slice(round, 2, 1)) + win_score(round)
  end

  defp hand_score(hand) do
    case hand do
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
