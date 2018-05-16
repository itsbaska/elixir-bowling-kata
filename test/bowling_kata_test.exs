defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  test "calculate score for gutter ball frame" do 
    assert BowlingKata.single_frame_score([0, 0], []) == 0
  end 

  test "calculate score for open frame" do 
    assert BowlingKata.single_frame_score([2, 9], []) == 11
  end 

  test "calculate score for spare frame" do 
    assert BowlingKata.single_frame_score([0, "/"], [[1, 1]]) == 11
  end 

  test "calculate score for multiple strike frames in a row" do 
    assert BowlingKata.single_frame_score(["X", 0], [["X", 0]]) == 20
  end 

  test "calculate score for strike frame" do 
    assert BowlingKata.single_frame_score(["X", 0], [[1, 1]]) == 12
  end 

  test " all gutter ball score sheet" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.score(knocked_pins) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  end

  test "all open frame score sheet" do
    knocked_pins = [[2, 3], [4, 5], [6, 7], [8, 9], [1, 0], [2, 3], [4, 5], [6, 7], [8, 9], [1, 0]]
    assert BowlingKata.score(knocked_pins) == [5, 9, 13, 17, 1, 5, 9, 13, 17, 1]
  end

  test "all gutter ball score total" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.total_score(knocked_pins) == 0
  end

  test "all open frame score total" do
    knocked_pins = [[2, 3], [4, 5], [6, 7], [8, 9], [1, 0], [2, 3], [4, 5], [6, 7], [8, 9], [1, 0]]
    assert BowlingKata.total_score(knocked_pins) == 90
  end

  test "spare score total" do
    knocked_pins = [[3, 5], [0, "/"], [4, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.total_score(knocked_pins) == 26
  end

  test "strike score total" do
    knocked_pins = [[3, 5], ["X", 0], [4, 2], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.total_score(knocked_pins) == 30
  end
end
