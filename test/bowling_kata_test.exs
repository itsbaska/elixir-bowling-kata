defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  test "gutter ball" do
    assert BowlingKata.score([[0, 0]]) == 0
  end

  test "open frame" do
    assert BowlingKata.score([[1, 2]]) == 3    
  end

  test "last frame" do 
    assert BowlingKata.score([[1, 2, 3]]) == 6
  end

  test "spare" do 
    assert BowlingKata.score([[5, 5], [1, 0]]) == 12
  end

  test "strike" do 
    assert BowlingKata.score([[10, 0], [1, 1]]) == 14
  end

  test "spare and strike" do 
    assert BowlingKata.score([[0, 10], [10, 0], [1, 2]]) == 36
  end

  test "perfect game" do
    assert BowlingKata.score([[10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 10, 10]]) == 300  
  end
end
