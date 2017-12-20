defmodule AdventOfCode.Day02.Checksum do
  defp get_range(list) do
    list
    |> Enum.map(&String.to_integer(&1))
    |> Enum.min_max(list)
    |> (fn ({min, max}) -> max - min end).()
  end

  defp add_range(row, acc) do
    acc + get_range(row)
  end

  def get_checksum(input) when is_bitstring(input) do
    input
    |> String.trim
    |> String.split("\n")
    |> Enum.map(&String.split(&1, "\t"))
    |> get_checksum
  end

  def get_checksum(list) do
    Enum.reduce(list, 0, fn(row, acc) -> add_range(row, acc) end)
  end
end
