defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  test "gutter ball score" do
    assert BowlingKata.score([[0, 0]]) == 0
  end

  test "open frame score" do
    assert BowlingKata.score([[1, 0]]) == 1
  end

  test "last frame score" do
    assert BowlingKata.score([[1, 2, 3]]) == 6
  end

  test "spare score" do
    assert BowlingKata.score([[4, 6], [1, 2]]) == 14
  end

  test "strike score" do
    assert BowlingKata.score([[10, 0], [1, 2]]) == 16
  end

  test "2 strike" do
    assert BowlingKata.score([[10, 0], [10, 0], [1, 2]]) == 37
  end

  test "spare and strike" do
    assert BowlingKata.score([[3,7], [10, 0], [1, 2]]) == 36
  end

  test "perfect game" do
    assert BowlingKata.score([[10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 10, 10]]) == 300
    
  end


end
