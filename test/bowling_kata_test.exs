defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  test "calculate score for single frame gutter ball" do 
    assert BowlingKata.single_frame_score([0, 0], []) == 0
  end 

  test "calculate score for single open frame" do 
    assert BowlingKata.single_frame_score([2, 9], []) == 11
  end 

  test " all gutter ball score" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.score(knocked_pins) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  end

  test "all open frame score" do
    knocked_pins = [[2, 3], [4, 5], [6, 7], [8, 9], [1, 0], [2, 3], [4, 5], [6, 7], [8, 9], [1, 0]]
    assert BowlingKata.score(knocked_pins) == [5, 9, 13, 17, 1, 5, 9, 13, 17, 1]
  end

  test "gutter ball score total" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.total_score(knocked_pins) == 0
  end

  test "open frame score total" do
    knocked_pins = [[2, 3], [4, 5], [6, 7], [8, 9], [1, 0], [2, 3], [4, 5], [6, 7], [8, 9], [1, 0]]
    assert BowlingKata.total_score(knocked_pins) == 90
  end

  # test "spare score total" do
  #   knocked_pins = [[3, 5], [0, "/"], [4, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
  #   assert BowlingKata.total_score(knocked_pins) == 22
  # end

  # test "strike score total" do
  #   knocked_pins = [[3, 5], ["X", 0], [4, 2], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
  #   assert BowlingKata.total_score(knocked_pins) == 24
  # end
end
