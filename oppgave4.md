# Oppgave 3: Map, filter, reduce

I denne delen skal vi lære å bruke de vanligste funksjonelle operatorene for å jobbe med lister; `map`, `filter` og `reduce`. 

## 3a: Sum av alle oddetall

:pencil2: Skriv en funksjon som tar inn et tall N, og som returnerer summen av alle oddetal i rekken `0..N`.

```elixir
defmodule SumOfOdds do
  def run(limit) do
    1..limit
    |> Enum.filter(fn x -> mod(x, 2) != 0 end)
    |> Enum.sum()
  end
end
```

## 3b: FizzBuzz

Skriv en funksjon som returnerer verdiene mellom 1 til 100 i en liste, men dersom verdien er delelig på 3, erstatt tallverdi med `"Fizz"`. Dersom tallet er delelig på 5, erstatt med `"Buzz"`. Dersom tallet er delelig på både 3 og 5, erstatt med `"FizzBuzz"`. 

Eksempel:

```elixir
  WorkshopCode.Exercise3.run()
  ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"...]
```

```elixir
defmodule FizzBuzz do
  def cond_example(limit) do
    1..limit
    |> Enum.map(fn num ->
      cond do
        mod(num, 3) == 0 && mod(num, 5) == 0 -> "FizzBuzz"
        mod(num, 3) == 0 -> "Fizz"
        mod(num, 5) -> "Buzz"
        _ -> "#{num}"
      end
    end)
  end

  def case_example(limit) do
    1..limit
    |> Enum.map(fn num ->
      case {mod(3, num), mod(5, num)} do
        (0, 0) -> "FizzBuzz"
        (0, _) -> "Fizz"
        (_, 0) -> "Buzz"
        _ -> "#{num}"
      end
    end)
  end
end

```

## 4d: Fibonacci