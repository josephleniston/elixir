defmodule Primes do
  def primes_to(n) do
    all_nums = span(2, n)
    remove = not_primes(all_nums, n)
    for x <- all_nums, !Enum.member?(remove, x), do: x
  end

  def not_primes(enumerator, n) do
    denominator = span(2, n-1)
    for x <- enumerator, y <- denominator, x > y, rem(x, y)==0, do: x
  end

  def span(from, to) do
    if from == to do
      [ to ]
    else
      [ from ] ++ span(from+1, to)
    end
  end

end
