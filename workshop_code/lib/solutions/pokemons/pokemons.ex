defmodule Solutions.Pokemons do
  alias Solutions.Pokemons.{InputHandler, PokemonApi, PokemonPrinter}

  def run() do
    pokemons =
      PokemonApi.get_pokemons()
      |> Enum.with_index()
      |> Enum.map(fn {pokemon, index} -> Map.put(pokemon, "id", index) end)

    loop(pokemons)
  end

  defp loop(pokemons) do
    InputHandler.print_menu()
    input_result = InputHandler.handle_input()

    case input_result do
      :list_pokemons -> PokemonPrinter.print_pokemons(pokemons)
      :show_details -> show_details(pokemons)
      _ -> :ok
    end

    unless input_result == :quit do
      loop(pokemons)
    end
  end

  defp show_details(pokemons) do
    pokemon_id = InputHandler.handle_pokemon_id_input()
    pokemon = Enum.find(pokemons, nil, fn %{"id" => id} -> id == pokemon_id end)

    if pokemon == nil do
      "No pokemon found with that ID"
    else
      PokemonApi.get_pokemon_details(pokemon["url"])
      |> PokemonPrinter.print_pokemon_details()
    end
  end
end
