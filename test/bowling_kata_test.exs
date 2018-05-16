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
    assert BowlingKata.score([[1, 9], [0, 0]]) == 10
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

  test "game" do
    assert BowlingKata.score([[0, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 10, 10]]) == 270
  end

  # test "calculate score for spare frame" do 
  #   assert BowlingKata.frame_score([0, "/"], [[1, 1], [nil, nil]]) == 11
  # end 

  # test "calculate score for two strike frames in a row" do 
  #   assert BowlingKata.frame_score(["X", nil], [["X", nil], [0, 0]]) == 20
  # end 

  # test "calculate score for three strike frames in a row" do 
  #   assert BowlingKata.frame_score(["X", nil], [["X", nil], ["X", nil]]) == 30
  # end 

  # test "calculate score for strike frame" do 
  #   assert BowlingKata.frame_score(["X", 0], [[1, 1], [nil, nil]]) == 12
  # end 



  # test " all gutter ball score sheet" do 
  #   knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
  #   assert BowlingKata.score(knocked_pins) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  # end


  # test "all open frame score sheet" do
  #   knocked_pins = [[2, 3], [4, 5], [6, 7], [8, 9], [1, 0], [2, 3], [4, 5], [6, 7], [8, 9], [1, 0]]
  #   assert BowlingKata.score(knocked_pins) == [5, 9, 13, 17, 1, 5, 9, 13, 17, 1]
  # end

  # test "all gutter ball score total" do 
  #   knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
  #   assert BowlingKata.total_score(knocked_pins) == 0
  # end

  # test "all open frame score total" do
  #   knocked_pins = [[2, 3], [4, 5], [6, 7], [8, 9], [1, 0], [2, 3], [4, 5], [6, 7], [8, 9], [1, 0]]
  #   assert BowlingKata.total_score(knocked_pins) == 90
  # end

  # test "spare score total" do
  #   knocked_pins = [[3, 5], [0, "/"], [4, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
  #   assert BowlingKata.total_score(knocked_pins) == 26
  # end

  # test "strike score total" do
  #   knocked_pins = [[3, 5], ["X", 0], [4, 2], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
  #   assert BowlingKata.total_score(knocked_pins) == 30
  # end
end
