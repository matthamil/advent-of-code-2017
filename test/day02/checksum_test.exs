defmodule AdventOfCodeTest.Day02.Checksum do
  use ExUnit.Case
  import AdventOfCode.Day02.Checksum

  test "checksum of tab-delimited file should be able to be calculated" do
    input = File.read!("./test/day02/test_input.txt")
    assert get_checksum(input) == 41887
  end
end
