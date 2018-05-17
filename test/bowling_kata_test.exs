defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  test "gutter ball frame" do 
    assert BowlingKata.score([[0, 0]]) == 0
  end 

  test "open frame" do 
    assert BowlingKata.score([[1, 2]]) == 3
  end 
  
  test "2 open frames" do
    assert BowlingKata.score([[1, 2], [1, 2]]) == 6
  end

  test "last frame" do
    assert BowlingKata.score([[10, 1, 2]]) == 13
  end

  test "spare" do
    assert BowlingKata.score([[1, 9], [1, 0]]) == 12
  end

  test "strike" do
    assert BowlingKata.score([[10, 0], [1, 2]]) == 16
  end

  test "2 strikes" do
    assert BowlingKata.score([[10, 0], [10, 0], [1, 2]]) == 37
  end

  test "spare and strike" do 
    assert BowlingKata.score([[4, 6], [10, 0], [1, 2]])
  end

  test "perfect game" do
    assert BowlingKata.score([[10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 10, 10]]) == 300
  end


  # -----

  test " all gutter ball score sheet" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.score(knocked_pins) == 0
  end

  test "all open frame score total" do
    knocked_pins = [[2, 3], [4, 5], [6, 1], [8, 1], [1, 0], [2, 3], [4, 5], [6, 1], [8, 1], [1, 0, 0]]
    assert BowlingKata.score(knocked_pins) == 62
  end

  test "spare score total" do
    knocked_pins = [[3, 5], [5, 5], [4, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0, 0]]
    assert BowlingKata.score(knocked_pins) == 26
  end

  test "strike score total" do
    knocked_pins = [[3, 5], [10, 0], [4, 2], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0, 0]]
    assert BowlingKata.score(knocked_pins) == 30
  end
end
