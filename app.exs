defmodule Tabuada do
  def multiplication(n \\ 0, result_list \\ [], x \\ 1)

  def multiplication(n, result_list, x) when x <= 10 do
    result = n * x
    multiplication(n, [result | result_list], x + 1)
  end

  def multiplication(_, result_list, _) do
    Enum.reverse(result_list)
  end

  def menu() do
    n = IO.gets("Type the number for the multiplication table: ")
    |> :erlang.list_to_binary()
    |> String.trim()
    |> String.to_integer()
    multiplication(n)
  end
end
