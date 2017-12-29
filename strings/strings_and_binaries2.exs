defmodule Parse do
  def anagram?(word1,word2) do
    anagram?(word1,word2,length(word1) == length(word2))
  end
  def anagram?(_, _, false),                  do: false
  def anagram?([], _, result),                do: result
  def anagram?([head | tail], word2, result), do: anagram?(tail, word2, (head in word2) && result)
end
