# Oppgave 3: Moduler og funksjoner

## Moduler 

Vi bruker moduler for å enkapsulere og organisere funksjoner i Elixir. Funksjoner som er relatert til hverandre hører typisk sammen i en modul. F.eks. er alle funksjoner i Elixirs standardbibliotek relatert til streng-manipulasjon i `String`-modulen. 

Vi definerer en funksjon i en modul ved å bruke følgende syntaks:

```elixir
defmodule MyModule do
  def my_function() do
    IO.puts("Hei")
  end
end
```
Her har vi en funksjon `my_function` som ligger i modul `MyModule`. Denne kan kalles fra andre moduler, eller via IEx ved å skrive `MyModule.my_function()`. 

:pencil2: Opprett en modul med en funksjon som returnerer en vilkårlig streng. Opprett så en ny modul i en separat fil, kall funksjonen og laget i den første modulen og skriv ut resultatet. 

## Private og åpne funksjoner


