defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

  # reduce all the scores if it matches the 
  def score([frame | []]) do
    IO.puts "1-"
    IO.inspect Enum.reduce(frame, 0, fn(x, total_score) -> x + total_score end)
  end

  def score([[10 |_] | rest]) do
    IO.puts "2-"
    
    10 + next_two_roll_score(rest) + score(rest)  
  end

  def score([[roll1, roll2] | rest]) when roll1 + roll2 == 10 do
    IO.puts "3-"
    
    10 + next_roll(rest) + score(rest)
  end

  def score([frame | rest]) do
    IO.puts "4-"
    IO.puts "-"
    IO.inspect score(rest)
    IO.puts "-"
    score([frame]) + score(rest)
  end

  def next_roll([[roll | _ ] | _]) do
    IO.puts "5-"
    roll
  end

  def next_two_roll_score([[roll1, roll2, _]]) do
    IO.puts "6-"
    roll1 + roll2 
  end

  def next_two_roll_score([[10 | _] | rest]) do
    IO.puts "7-"
    10 + next_roll(rest)
  end

  def next_two_roll_score([frame | _ ]) do
    IO.puts "8-"
    score([frame])
  end

end
