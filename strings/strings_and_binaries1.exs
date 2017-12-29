defmodule Parse do
  def only_ascii(str),                    do: only_ascii(str, true)
  def only_ascii(_, false),               do: false
  def only_ascii([], result),             do: result
  def only_ascii([head | tail], result),  do: only_ascii(tail, (head in 32..126) && result)
end
