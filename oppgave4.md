# Oppgave 4: Rekursjon

## 4a: Fakultet
Fakultetet av et tall N er produktet av alle tall i sekvensen 1..N. 
F.eks. `5! = 1 * 2 * 3 * 4 * 5 = 120`
Skriv en funksjon der du anvender rekursjon som tar inn et tall og returnerer fakultet av tallet.

```elixir
WorkshopCode.Oppgave4.fakultet(5)
120

WorkshopCode.Oppgave4.fakultet(10)
3628800
```

## 4b: Palindrom
Et palindrom er en sekvens av bokstaver som kan leses på samme måte i begge retninger, som "madam" eller "agnes i senga". 
Skriv en funksjon der du anvender rekursjon som tar inn en streng som parameter og sjekker om strenger er et palindrom. 

```elixir
WorkshopCode.Oppgave4.palindrom?("apparat")
false

WorkshopCode.Oppgave4.palindrom?("agnes i senga")
true
```

## 4c: Fibonacci 2.0

Gitt en fibonacci-sekvens, der høyeste verdi ikke går oven 4 millioner, finn summen av alle fibonacci-tall som i sekvensen som er partall. 

Eksempel:
```elixir
Oppgave4.fib_sum()
4613732
```

Gå videre til [Oppgave 5 - Enhetstesting](./oppgave5.md) :arrow_right:
