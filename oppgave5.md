# Oppgave 6: Enhetstesting

I Elixir trenger man ikke eksterne rammerverk for å skrive og kjøre enhetstester. Elixir inkluderer et testrammeverk, ExUnit, som inkluderer alt vi trenger for å skrive enhetstester. 

:bulb: Enhetstester i Elixir skrives i `.exs`-filer og ikke i `.ex`-filer. `.exs`-filer som er for å kjøres individuelt og ikke som den del av et mix-prosjekt. 

```elixir
defmodule ExampleTest do
  use ExUnit.Case
  alias WorkshopCode.Oppgave5

  test "is_palindrom returns true if input is palindrome " do
    assert Oppgave5.is_palindrom?("agnes i senga") == true
  end

  test "is_palindrom returns false if input is not palindrome " do
    assert Oppgave5.is_palindrom?("apparat") == false
  end
end
```