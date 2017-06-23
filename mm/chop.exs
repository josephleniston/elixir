defmodule Chop do
  def guess(actual, range) do
    low..high=range
    current_guess=div(high-low,2)+low
    IO.puts "Guess is #{current_guess}"
    if actual == current_guess do
      IO.puts "Answer is #{current_guess}"
    else
      new_range = new_range(actual, range, current_guess)
      guess(actual, new_range)
    end
  end

  def new_range(actual, range, current_guess) when actual < current_guess do
    low.._=range
    low..current_guess-1
  end
  def new_range(actual, range, current_guess) when actual > current_guess do
    _..high=range
    current_guess..high
  end
end
