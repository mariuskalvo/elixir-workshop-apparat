# Oppgave 3: Map, filter, reduce

I denne delen skal vi lære å bruke de vanligste funksjonelle operatorene for å jobbe med lister; `map`, `filter` og `reduce`. 

:bulb: I katalogen `workshop_code/lib` finner du `oppgave3.ex`, som du kan bruke som startpunkt for å skrive kode i denne oppgaven. For å kjøre koden i IEx, last prosjektet inn ved å skrive `iex -S mix` inne i `workshop_code`, om du ikke allerede har en aktiv IEx-sesjon. Der kan du kjøre koden ved å skrive `<modulnavn>.<funksjonsnavn>` (f.eks. `Oppgave3.run()`)

## 3a: Sum av alle oddetall
:pencil2: Skriv en funksjon som tar inn et tall N, og som returnerer summen av alle oddetal i rekken `0..N`.

Eksempel: 
```elixir
Oppgave3.sumOfOdds(30)
225
```

## 3b: FizzBuzz

Skriv en funksjon som returnerer verdiene mellom 1 til 100 i en liste, men dersom verdien er delelig på 3, erstatt tallverdi med `"Fizz"`. Dersom tallet er delelig på 5, erstatt med `"Buzz"`. Dersom tallet er delelig på både 3 og 5, erstatt med `"FizzBuzz"`. 

Eksempel:
```elixir
  Oppgave3.fizzbuzz()
  ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"...]
```

## 4d: Fibonacci-sekvens

Tallfølgen `1,1,2,3,5,8,13,...` er bygd opp ved at hvert tall i følgen er summen av de to foregående tallene i følgen. Dette kalles for en fibonacci-sekvens. 

Skriv en funksjon som tar inn et tall N og genererer en de N første fibonacci-tallene. 
Eksempel:

```elixir
```
