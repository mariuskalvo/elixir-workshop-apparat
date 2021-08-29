defmodule Solutions.Oppgave4 do

  """
    FizzBizz ved bruk av Enum.map og cond
  """
  def cond_example() do
    1..100
    |> Enum.map(fn num ->
      cond do
        rem(num, 15) == 0 -> "FizzBuzz"
        rem(num, 3) == 0 -> "Fizz"
        rem(num, 5) == 0 -> "Buzz"
        true -> "#{num}"
      end
    end)
  end

  """
    FizzBizz ved bruk av Enum.map og case
  """
  def case_example() do
    1..100
    |> Enum.map(fn num ->
      case {rem(num, 3), rem(num, 5)} do
        {0, 0} -> "FizzBuzz"
        {0, _} -> "Fizz"
        {_, 0} -> "Buzz"
        {_, _} -> "#{num}"
      end
    end)
  end

  """
    FizzBizz ved bruk av function pattern matching
  """
  def pattern_match_example() do
    Enum.map(1..100, &fizzbuzz_val/1)
  end

  defp fizzbuzz_val(num) when rem(num, 3) == 0, do: "Fizz"
  defp fizzbuzz_val(num) when rem(num, 5) == 0, do: "Buzz"
  defp fizzbuzz_val(num) when rem(num, 15) == 0, do: "Fizzbuzz"
  defp fizzbuzz_val(num), do: "#{num}"
end
