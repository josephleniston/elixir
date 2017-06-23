defmodule Upcase do
  def start do
    loop()
  end

  def loop do
    receive do
      {message, from} ->
       upcased = String.upcase(message)
       send(from, {{:ok, upcased}, self()})
    end
  end

  def upcase_string(message) do
    upcase = spawn(Upcase, :start, [])
    send(upcase, {message, self()})
    receive do
      {{:ok, upcased}, from} ->
        IO.puts upcased
    end
  end
end
