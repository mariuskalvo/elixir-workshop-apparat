defmodule Solutions.Pokemons.PokemonApi do
  def get_pokemons() do
    HTTPoison.get!("https://pokeapi.co/api/v2/pokemon?limit=30")
    |> get_body()
    |> Poison.decode!()
    |> get_results()
  end

  def get_pokemon_details(url) do
    HTTPoison.get!(url)
    |> get_body()
    |> Poison.decode!()
    |> Map.take(["species", "weight", "height", "name"])
  end

  defp get_body(%{body: body}), do: body
  defp get_results(%{"results" => results}), do: results
end
