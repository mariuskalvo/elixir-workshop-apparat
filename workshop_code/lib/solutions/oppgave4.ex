defmodule Solutions.Oppgave4 do
  def fakultet(1), do: 1
  def fakultet(n), do: n * fakultet(n - 1)

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
end
