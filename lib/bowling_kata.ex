defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

  def single_frame_score(frame, tail) do 

    first_roll = List.first(frame)
    second_roll = List.last(frame)

    cond do 
      frame == [0, 0] ->
        0
      first_roll < 10 and second_roll < 10 ->
        first_roll + second_roll  
      second_roll == "/" ->
        next_roll = List.first(List.first(tail))
        first_roll + 10 + next_roll
      first_roll == "X" ->
        next_roll = List.first(List.first(tail))
        next_next_roll = List.last(List.first(tail))
        10 + next_roll + next_next_roll
    end
  end

  def score([head | tail]) do
    [single_frame_score(head, tail) | score(tail)]
  end

  def score([]) do
    []
  end
  
  def total_score(knocked_pins) do
    Enum.reduce(score(knocked_pins), 0, fn(frame_score, total_score) -> 
      frame_score + total_score
    end)
  end

end