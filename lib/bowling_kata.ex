defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

  def single_frame_score(frame) do 
    first_roll = List.first(frame)
    second_roll = List.last(frame)
    cond do 
      first_roll == 0 and second_roll == 0 ->
        0
      first_roll <= 9 and second_roll <= 9 ->
        first_roll + second_roll
      first_roll <= 9 and second_roll == "/" ->
        first_roll + second_roll
                  
    end
    
  end

  def score(knocked_pins) do 
    Enum.map(knocked_pins, fn frame ->
      single_frame_score(frame)
    end)
  end

  def total_score(knocked_pins) do
    Enum.reduce(score(knocked_pins), 0, fn(frame_score, total_score) -> frame_score + total_score end)
  end



end
