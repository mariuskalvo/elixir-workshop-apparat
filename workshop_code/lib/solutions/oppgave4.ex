defmodule Solutions.Oppgave4 do
  @spec fakultet(pos_integer) :: pos_integer
  def fakultet(1), do: 1
  def fakultet(n), do: n * fakultet(n - 1)

  @spec palindrom?(String.t()) :: boolean
  def palindrom?(input) do
    if String.length(input) in [0, 1] do
      true
    else
      head = String.first(input)
      tail = String.last(input)
      rest = String.slice(input, 1, String.length(input) - 2)
      head == tail && palindrom?(rest)
    end
  end

  def fib_sum(max_value) do
    fib_to_limit(max_value)
    |> Enum.filter(fn num -> rem(num, 2) == 0 end)
    |> Enum.sum()
  end

  defp fib_to_limit(max_value, numbers \\ [1, 1]) do
    [second_last, last] = Enum.take(numbers, -2)
    new_value = second_last + last

    if new_value > max_value do
      numbers
    else
      new_numbers = numbers ++ [new_value]
      fib_to_limit(max_value, new_numbers)
    end
  end
end
