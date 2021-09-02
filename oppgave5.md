# Oppgave 5: Enhetstesting

I Elixir trenger man ikke eksterne rammerverk for å skrive og kjøre enhetstester. Elixir inkluderer et testrammeverk, ExUnit, som inkluderer alt vi trenger for å skrive enhetstester. 

:bulb: Enhetstester i Elixir skrives i `.exs`-filer og ikke i `.ex`-filer. `.exs`-filer som er for å kjøres individuelt og ikke som den del av et mix-prosjekt. 

:pencil2: Skriv enhetstester for funksjoner som du skrev i oppgave 3 og oppgave 4. Under `tests/oppgave3_tests.exs` og `tests/oppgave4_tests.exs` finner du skjeletter på filer du kan skrive i. Du kan ta utgangspunkt i testene under, som er et eksempel på tester skrevet for palindrom-sjekk i oppgave 4.

:bulb: For å kjøre enhetstester i et mix-prosjekt, kan du skrive `mix test` i terminalen, når du står i roten av prosjektet. 

```elixir
defmodule Oppgave4.Tests do
  use ExUnit.Case

  test "palindrom?/1 returns true if input is palindrome " do
    assert Oppgave4.palindrom?("agnes i senga") == true
  end

  test "palindrom?/1 returns false if input is not palindrome " do
    assert Oppgave4.palindrom?("apparat") == false
  end

  test "palindrom?/1 returns true if input is empty " do
    assert Oppgave4.palindrom?("") == true
  end

  test "palindrom?/1 returns true if input is string of one character " do
    assert Oppgave4.palindrom?("a") == true
  end
end
```

Gå videre til [Oppgave 6 - Tilstand og GenServer](./oppgave6.md) :arrow_right:


