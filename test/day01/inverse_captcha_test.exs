defmodule AdventOfCodeTest.Day01.InverseCaptcha do
  use ExUnit.Case
  import AdventOfCode.Day01.InverseCaptcha

  test "1122 produces a sum of 3 (1 + 2) because the first digit (1) matches the second digit and the third (2) matches the fourth digit." do
    assert init("1122") == 3
  end

  test "1111 produces 4 because each digit (all 1) matches the next." do
    assert init("1111") == 4  
  end

  test "1234 produces 0 because no digits match the next." do
    assert init("1234") == 0
  end

  test "91212129 produces 9 because the only digit that matches the next one is the last digit, 9." do
    assert init("91212129") == 9
  end
end
