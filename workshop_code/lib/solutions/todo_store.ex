defmodule Solutions.TodoStore do
  use GenServer

  # Client methods

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def get_todos() do
    GenServer.call(__MODULE__, :get_todos)
  end

  def add_todo(todo) do
    GenServer.cast(__MODULE__, {:add_todo, todo})
  end

  def remove_todo(todo_index) do
    GenServer.cast(__MODULE__, {:remove_todo, todo_index})
  end

  # Server methods

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:get_todos, _from, data) do
    {:reply, data, data}
  end

  @impl true
  def handle_cast({:add_todo, todo_item}, existing_todos) do
    {:noreply, [todo_item | existing_todos]}
  end

  @impl true
  def handle_cast({:remove_todo, todo_index}, todos) do
    {:noreply, List.delete_at(todos, todo_index)}
  end
end
