handle_open = fn
  {:ok, file} -> "Read data #{IO.read(file, :line)}"
  {_, error}  -> "Error: #{:file.format_error(error)}"
end
IO.puts handle_open.(File.open(".zsh_history")) # call with a file that exists
IO.puts handle_open.(File.open("nonexistent"))  # and then with one that doesn't
