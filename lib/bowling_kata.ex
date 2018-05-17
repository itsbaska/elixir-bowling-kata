defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

  # def score([[roll1, roll2]]) do
  #   roll1 + roll2
  # end

  def score([frame | []]) do
    Enum.reduce(frame, 0, fn(roll, rolls) -> roll + rolls end)
  end

  def score([[10, _] | next_frames]) do
    10 + next_two_rolls(next_frames) + score(next_frames)
  end

  def score([[roll1, roll2] | next_frames]) when roll1 + roll2 == 10 do
    10 + next_roll(next_frames) + score(next_frames)
  end

  def score([frame | next_frames]) do
    score([frame]) + score(next_frames)
  end

  def next_roll([[roll, _] | _]) do
    roll
  end
  
  def next_two_rolls([[roll1, roll2, _]]) do
    roll1 + roll2
  end

  def next_two_rolls([[10, _] | next_frames]) do
    10 + next_roll(next_frames)
  end

  def next_two_rolls([frame | _]) do 
    score([frame])  
  end



end
