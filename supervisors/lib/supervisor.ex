defmodule Example.Supervisor do
  use Supervisor

  def start_link() do
    Supervisor.start_link(__MODULE__, :ok, [])
  end

  @impl true
  def init(:ok) do
    children = [
      Stack
    ]
    IO.inspect("Starting supervisor")
    Supervisor.init(children, strategy: :one_for_one, max_restarts: 1)
  end
end
