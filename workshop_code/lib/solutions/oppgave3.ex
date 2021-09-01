defmodule Solutions.Oppgave3 do
  """
    Sum av alle oddetall opp til og med `limit`
  """

  @spec sumOfOdds(pos_integer()) :: pos_integer()
  def sumOfOdds(limit) do
    1..limit
    |> Enum.filter(fn num -> rem(num, 2) != 0 end)
    |> Enum.sum()
  end

  """
    FizzBizz ved bruk av Enum.map og cond
  """

  @spec cond_example :: list
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

  @spec case_example :: list
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

  @spec pattern_match_example :: list
  def pattern_match_example() do
    Enum.map(1..100, &fizzbuzz_val/1)
  end

  defp fizzbuzz_val(num) when rem(num, 3) == 0, do: "Fizz"
  defp fizzbuzz_val(num) when rem(num, 5) == 0, do: "Buzz"
  defp fizzbuzz_val(num) when rem(num, 15) == 0, do: "Fizzbuzz"
  defp fizzbuzz_val(num), do: "#{num}"

  """
    Fibonacco-sekvens med rekursjon (Krevende utregningsmessig)
  """
  @spec fibonacci_slow(pos_integer()) :: pos_integer()
  def fibonacci_slow(limit) do
    1..limit
    |> Enum.map(fn num -> fibonacci_rec(num) end)
    |> Enum.sum()
  end

  @spec fibonacci_rec(non_neg_integer()) :: pos_integer()
  def fibonacci_rec(0), do: 1
  def fibonacci_rec(1), do: 1
  def fibonacci_rec(n), do: fibonacci_rec(n - 1) + fibonacci_rec(n - 2)

  """
    Fibonacci-sekvens
  """

  @spec fibonacci(integer) :: list
  def fibonacci(limit) do
    initial = [1, 1]

    2..limit
    |> Enum.reduce(initial, fn num, acc ->
      [a, b] = Enum.take(acc, -2)
      acc ++ [a + b]
    end)
  end
end
