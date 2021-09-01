# Oppgave 8: Prosjekt - Pokemon API 

I denne oppgaven skal vi integrere mot et eksternt Pokemon API. Vi skal hente ut en liste av pokemons, og kunne be om å få vite mer om visse pokemons. Vi skal implementere dette som en konsoll-applikasjon, der bruker kan velge alternativer fra en tekst-meny, og utføre enten:

- 1. Utlisting av pokemons
- 2. Vis pokemon-detaljer
- 3. Avslutte program

Her er det helt frie tøyler. Du strukturerer alt slik du vil og leter på internett eller i Elixir-dokumentasjonen rundt hvordan du skal løse problemet. 

Under `workshop_code/solutions/pokemons/pokemons.ex` ligger det et eksempel du kan bruke som inspirasjon, men forsøk å finne ut av mest mulig på egen hånd, slik du får muligheten til å bruke alle de gode internett-ressursene som finnes for Elixir.

I `workshop_code` er alt bibliotekene `HTTPoison` (Http-klient) og `Poison` (JSON-parser) lagt til som du kan anvende. 

Good luck, Chuck! :rocket:


Eksempel på bruk:
```
+ ------------------------ +
| 1: List pokemons         |
| 2: Show pokemon details  |
| 3: Quit                  |
+ ------------------------ +
Enter your option: 
1

0: bulbasaur
1: ivysaur
2: venusaur
3: charmander
4: charmeleon
5: charizard
6: squirtle
7: wartortle
8: blastoise
9: caterpie
10: metapod

+ ------------------------ +
| 1: List pokemons         |
| 2: Show pokemon details  |
| 3: Quit                  |
+ ------------------------ +
Enter your option: 
2
        Enter ID of pokemon: 1


        -- Ivysaur -- 
        Height: 10
        Weight: 130

```


send(self(), {:hello, "world"})

receive do
  {:hello, msg} -> msg
  _ -> "won't match"
end