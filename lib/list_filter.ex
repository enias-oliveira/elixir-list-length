require(Integer)
require String

defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListFilter.hello()
      :world

  """
  defp convert_to_number(n) do
    with {number, _} <- Integer.parse(n) do
      number
    else error -> 0
    end
  end

  def call(list) do
    number_list = Enum.map(list, fn x -> convert_to_number(x) end)
    Enum.reduce(number_list, 0 ,fn x, acc -> if Integer.is_odd(x), do: acc + 1, else: acc end)
  end
end
