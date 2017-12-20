defmodule AdventOfCode.Day01.InverseCaptcha do
  defp push_head_to_tail([head | _tail] = list) do
    list
    |> Enum.concat([head])
  end

  defp increment_if_next_is_duplicate([_], sum), do: sum
  defp increment_if_next_is_duplicate([a, a | rest], sum) do
    [a | rest]
    |> increment_if_next_is_duplicate(sum + a)
  end
  defp increment_if_next_is_duplicate([_a, b | rest], sum) do
    [b | rest]
    |> increment_if_next_is_duplicate(sum)
  end

  def init(input) do
    input
    |> String.codepoints
    |> Enum.map(&String.to_integer(&1))
    |> push_head_to_tail
    |> increment_if_next_is_duplicate(0)
  end
end
