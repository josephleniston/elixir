defmodule MyList do
  def max(list) do
    _max(list, 0)
  end
  defp _max([], value) do
    value
  end
  defp _max([head | tail], value) do
    if head > value do
      _max(tail, head)
    else
      _max(tail, value)
    end
  end
end
