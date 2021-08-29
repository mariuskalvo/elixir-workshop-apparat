defmodule Solutions.Pokemons.InputHandler do
  def handle_input() do
    choice =
      IO.gets("Enter your option: \n")
      |> String.replace("\n", "")

    case choice do
      "1" -> :list_pokemons
      "2" -> :show_details
      "3" -> :quit
      _   -> :error
    end
  end

  def handle_pokemon_id_input() do
    IO.gets("\tEnter ID of pokemon: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  def print_menu() do
    IO.puts("+ ------------------------ +")
    IO.puts("| 1: List pokemons         |")
    IO.puts("| 2: Show pokemon details  |")
    IO.puts("| 3: Quit                  |")
    IO.puts("+ ------------------------ +")
  end
end
