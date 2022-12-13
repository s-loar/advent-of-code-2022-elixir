defmodule Day03 do
  def part_1 do
    File.read!('./data/day03.txt')
    |> String.split( "\n", trim: true)
    |> Enum.map(&dup_priority/1)
    |>Enum.sum()
  end

  defp dup_priority(rucksack) do
    half = (String.length(rucksack) / 2) |> trunc()
    compartment_1 = String.slice(rucksack, 0, half) |> String.to_charlist() |> MapSet.new()
    compartment_2 = String.slice(rucksack, half, half) |> String.to_charlist() |> MapSet.new()
    char = MapSet.intersection(compartment_1, compartment_2) |> MapSet.to_list() |> hd
    priorities = Enum.to_list(hd('a')..hd('z')) ++ Enum.to_list(hd('A')..hd('Z'))
    Enum.find_index(priorities, fn c -> c == char end) + 1
  end
end
