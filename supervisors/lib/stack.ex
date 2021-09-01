defmodule Stack do
  use GenServer

  # Client methods

  def start_link(state \\ %{}) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def peek() do
    GenServer.call(Stack, :peek)
  end

  def go_crazy() do
    GenServer.cast(Stack, :go_crazy)
  end

  def pop() do
    GenServer.call(Stack, :pop)
  end

  def push(item) do
    GenServer.cast(Stack, {:push, item})
  end

  @impl true
  def init(stack) do
    IO.inspect("Starting stack")
    {:ok, stack}
  end


  # Server methods

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_call(:peek, _from, data) do
    if Enum.empty?(data) do
      {:reply, "Stack is empty", data}
    else
       [head | _tail] = data
       {:reply, head, data}
    end
  end

  @impl true
  def handle_cast({:push, head}, tail) do
    {:noreply, [head | tail]}
  end

  @impl true
  def handle_cast(:go_crazy, data) do
    Stack.go_crazy()
    {:noreply, data}
  end
end
