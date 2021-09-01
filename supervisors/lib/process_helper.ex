defmodule ProcessHelper do
  def find_crazy_process() do
    Process.list()
    |> Enum.map(&({&1, Process.info(&1)}))
    |> Enum.map(fn {pid, p} -> %{pid: pid, name: p[:registered_name], reductions: p[:reductions]} end)
    |> Enum.sort(fn a, b -> a[:reductions] > b[:reductions] end)
    |> Enum.take(10)
  end
end
