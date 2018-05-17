defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

  # reduce scores in a single frame if it matches [[frame] | []]
  # [[frame] | []] ==> results to something like [[1, 2]]

  def score([frame | []]) do
    IO.puts "1-"
    IO.inspect [frame | []]
    IO.inspect Enum.reduce(frame, 0, fn(x, total_score) -> x + total_score end)
  end

  def score([[10 |_] | rest]) do
    IO.puts "2-"
    IO.inspect 10 + next_two_roll_score(rest) + score(rest)  
  end

  # calculates score for when the frame adds up to 10 and is a spare.
  def score([[roll1, roll2] | rest]) when roll1 + roll2 == 10 do
    IO.puts "3-"
    10 + next_roll(rest) + score(rest)
  end

# 
  def score([frame | rest]) do
    IO.puts "4-"
    IO.puts "  "
    # score([frame]) ==> 3
    # rest ==> [[1, 2]]
    # score(rest) ==> 3
    IO.puts "  "
    IO.inspect score([frame]) + score(rest)
  end

  # gives back the next roll
  def next_roll([[roll | _ ] | _]) do
    IO.puts "5-"
    IO.inspect roll
  end

  # gives back the addition of the next two rolls, if they are not a strike
  def next_two_roll_score([[roll1, roll2, _]]) do
    IO.puts "6-"
    roll1 + roll2 
  end

  # when there is a strike 
  def next_two_roll_score([[10 | _] | rest]) do
    IO.puts "7-"
    10 + next_roll(rest)
  end


  def next_two_roll_score([frame | _ ]) do
    IO.puts "8-"
    IO.inspect score([frame])
  end
end
