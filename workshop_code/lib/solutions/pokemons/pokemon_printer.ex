defmodule Solutions.Pokemons.PokemonPrinter do
  def print_pokemons(pokemons) do
    IO.puts("\n")

    Enum.each(pokemons, fn %{"name" => name, "id" => id} ->
      IO.puts("#{id}: #{name}")
    end)

    IO.puts("\n")
  end

  def print_pokemon_details(pokemon) do
    %{
      "height" => height,
      "weight" => weight,
      "name" => name
    } = pokemon

    IO.puts("\n")
    IO.puts("\t-- #{String.capitalize(name)} -- ")
    IO.puts("\tHeight: #{height}")
    IO.puts("\tWeight: #{weight}")
    IO.puts("\n")
  end
end
