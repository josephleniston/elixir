fizzbuzz = fn
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
  {_, _, a} -> a
end

fizzrem = fn
  n -> fizzbuzz.({rem(n,3), rem(n,5), n})
end

IO.puts fizzrem.(10)
IO.puts fizzrem.(11)
IO.puts fizzrem.(12)
IO.puts fizzrem.(13)
IO.puts fizzrem.(14)
IO.puts fizzrem.(15)
IO.puts fizzrem.(16)
