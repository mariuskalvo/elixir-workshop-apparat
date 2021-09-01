# Oppgave 7: Tilstand og GenServer

I denne oppgaven skal vi lage en GenServer-implementasjon, der vi kan lagre, liste ut og fjerne elementer i en todo-liste. 

:book: En GenServer (General Server) er en Elixir prosess som du kan anvende til å f.eks. lagre tilstand eller eksekvere kode asynkront. GenServer gir oss et abstraksjonslag som gjør det enkelt å opprette prosesser og sende/motta meldinger til prosess. Når du bruker GenServer, trenger du kun å implementere callbacks for funksjonalitet du er interessert i.

Det er skrevet litt overordnet under rundt hvordan GenServer fungerer for å kunne sende og motta meldinger, 
men bruk gjerne [dokumentasjonen til GenServer](https://hexdocs.pm/elixir/1.12/GenServer.html) for å utforske mulighetene til GenServer. 

:pencil2: Skriv en implementasjon av GenServer for med callback for å liste ut todo-elementer som lagres i prosessen, samt. callback for `init`. Husk å starte prosessen i IEx.
Du skal kunne sende melding til prosessen og be den svare ved å bruke `GenServer.call`. F.eks. `GenServer.call(<Navn på prosess>, :get_todos)`.

Eksempel i IEx:
```
iex(1)> TodoStore.start_link
{:ok, #PID<0.254.0>}
iex(2)> GenServer.call(TodoStore, :get_todos)
[]
```

:pencil2: Implementer callback for å legge til todo-element.
Du skal kunne sende en melding til prosessen, og be den legge til todo-element asynkront ved å bruke `GenServer.cast`. F.eks. `GenServer.call(<Navn på prosess>, {:add_todo, todo})`.

Eksempel i IEx:
```
iex(3)> GenServer.cast(TodoStore, {:add_todo, "Husk å bestill pizza"})
:ok
iex(4)> GenServer.call(TodoStore, :get_todos)
["Husk å bestill pizza"]
```

:pencil2: Implementer callback for å fjerne todo-element basert på index.
Du skal kunne sende en melding til prosessen, og be den fjerne et element asynkront ved å bruke `GenServer.cast`. F.eks. `GenServer.call(<Navn på prosess>, {:remove_todo, index})`.

Eksempel i IEx:
```
iex(3)> GenServer.cast(TodoStore, {:remove_todo, 0})
:ok
iex(4)> GenServer.call(TodoStore, :get_todos)
[]
```

:pencil2: Legg til metoder som abstraherer vekk kall til `GenServer.call` og `GenServer.cast`.
F.eks.
- `TodoStore.get_todos()`
- `TodoStore.add_todo(todo)`
- `TodoStore.remove_todo(index)`
Det går fint å legge disse metodene i samme fil som GenServer-callbacks.

--

## :bulb Kort om GenServer 

Her er et eksempel på en enkel implementasjon av en GenServer-prosess. Under kodesnutten finner du en kort forklaring på hva de enkelte funksjonene gjør.

```elixir
defmodule Stack do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  # Callbacks

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end
end

```

- `GenServer.start_link(__MODULE__, default)`: Denne kodesnutten starter en GenServer prosess og gir den et registrert navn lik gjeldende modul. Dette er et vanlig mønster, for å kunne navngi prosess etter modulnavn, og kunne ha en fast referanse til en prosess dersom gjerne har en instans av prosessen. 

- `handle_call`: Callback som kalles når du vil håndtere synkrone kall. Gjerne dersom du sender en melding og du trenger et svar med en gang (Nyttig f.eks. om du skal hente ut informasjon fra GenServer-prosess)

- `handle_cast`: Callback som kalles når prosess håndterer asynkrone kall. Prosess svarer med en gang, men kan fortsette intern eksekvering (Nyttig f.eks. om du skal legge til data, men ikke trenger et svar med oppdatert tilstand med en gang).

Om vi ser på eksempelet over, henter vi først inn GenServer-funksjonalitet igjennom `use Genserver`. Første metode en er wrapper rundt `GenServer.start_link`, som oppretter prosess med gjeldende modul som registrert navn og en tom liste som initiell tilstand. 

Deretter implementeres 3 GenServer-callbacks:
- `init` - Denne kalles når server blir initialisert. Den gjør ikke noe spesielt her, men kunne i praksis utført noe logikk ved oppstart. 
- `handle_call(:pop, ...)` - Funksjon som utføres synkront dersom den prosessen får `:pop`-melding og returnerer første element i listen i prosess-tilstand
- `handle_cast(:push, ...)` - Kalles asynkront dersom prosessen får `:push`-melding. Funksjonen returnerer med en gang.

For å sende melding til prosessen om at den skal utføre disse callbacks'ene, kan vi bruke `GenServer.call` og `GenServer.cast`.

Eksempel: 
- `GenServer.call(Stack, :pop)` 
- `GenServer.cast(Stack, {:push, "Apparat ruler Bergen"})`
