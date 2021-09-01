# Oppgave 2: `IEx` - Interactive Elixir

Når du installerer Elixir på maskinen din, får du også en interaktiv REPL som du kan bruke for å evaluere Elixir-kode. 

:pencil2: I terminalen din, start IEx ved å skrive `iex`. Prøv å eksekver litt kode, som å f.eks. legge sammen to tall eller å slå sammen to strenger.

F.eks. 
```
Interactive Elixir (1.10.4) - press Ctrl+C to exit
iex(1)> 40 + 2
42
iex(2)> "hello" <> " world"
"hello world"
```

For å gå ut av `IEx`, bruk `CTRL + C`.

## Kjøring av fil i IEx
Du kan laste inn filene i mix-prosjektet ditt inn i en IEx-sesjon ved å skrive `iex -S mix` i rot-katalogen av prosjektet ditt. 

:pencil2: Last prosjektet `workshop_code` inn i en IEx-sesjon. Utfør innholdet i skriptet `lib/oppgave2.ex` ved å skrive `Oppgave2.run()`.

Utfør en endring i `lib/oppgave2.ex` ved å f.eks endre retur-verdi i `run`-funksjonen. Kjør deretter `recompile` i IEx-REPL for å rekompilere prosjektet og gjøre nye endringer tilgjengelige. Kjør funksjonen på nyy.

:pencil2: Prøv deg frem med å endre innholdet i `run`-metoden. Prøv å legg til en ny metode. Bli kjent med REPL. Den er veldig nyttig!

:bulb: I de neste oppgavene kan du enten kjøre koden din via IEx REPL eller ved å kjøre `mix run -e <ModuleNavn>.<Funksjon>`. F.eks. `mix run -e Exercise1.run`. Det anbefales å bruke IEx for å få en raskere feedback-loop, slik du kan kjøre indivduelle funksjoner.

Gå videre til [Oppgave 3 - Map, filter, reduce ](./oppgave3.md) :arrow_right: