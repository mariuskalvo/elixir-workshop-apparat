# Oppgave 5: Rekursjon

# 5a: Fakultet
Fakultetet av et tall N er produktet av alle tall i sekvensen 1..N. 
F.eks. `5! = 1 * 2 * 3 * 4 * 5 = 120`
Skriv en funksjon der du anvender rekursjon som tar inn et tall og returnerer fakultet av tallet.

```elixir
WorkshopCode.Oppgave5.fakultet(5)
120

WorkshopCode.Oppgave5.fakultet(10)
3628800
```

# 5b: Palindrom
Et palindrom er en sekvens av bokstaver som kan leses på samme måte i begge retninger, som "madam" eller "agnes i senga". 
Skriv en funksjon der du anvender rekursjon som tar inn en streng som parameter og sjekker om strenger er et palindrom. 

```elixir
WorkshopCode.Oppgave5.palindrom?("apparat")
false

WorkshopCode.Oppgave5.palindrom?("agnes i senga")
true
```
