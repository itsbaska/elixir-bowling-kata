defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  test "gutter ball score" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.score(knocked_pins) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  end

  test "gutter ball score total" do 
    knocked_pins = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.total_score(knocked_pins) == 0
  end

  test "open frame score" do
    knocked_pins = [[3, 5], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [2, 3]]
    assert BowlingKata.total_score(knocked_pins) == 13
  end

  test "spare score" do
    knocked_pins = [[3, 5], [0, "/"], [4, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]]
    assert BowlingKata.total_score(knocked_pins) == 22
  end

  
 

  # test "10 strikes" do
  #   assert BowlingKata.score(["x", 0])
  # end



end
