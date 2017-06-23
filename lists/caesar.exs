defmodule MyList do
  def caesar([], _) do
    []
  end
  def caesar([ head | tail ], n) do
    char = if head + n > 123 do
      rem(head + n, 123) + 97
    else
      head + n
    end
    [ char | caesar(tail, n) ]
  end
end
