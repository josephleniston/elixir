defmodule MyEnum do
  def all?(list, func) do
    all?(list, func, true)
  end

  def all?([head], func, true) do
    func.(head)
  end

  def all?([head | tail], func, true) do
    if func.(head) do
      all?(tail, func, true)
    else
      false
    end
  end

  def each([head | tail], func) do
    [func.(head) | each(tail)]
  end

  def each [head], func do
    func.(head)
  end

end
