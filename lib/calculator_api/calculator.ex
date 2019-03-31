defmodule CalculatorApi.Calculator do
  @moduledoc """
    Functions to make calculations on strings
  """

  def calculate string do
    input = String.to_charlist(string)
    eval(parse(input))
  end

  defp parse string do
    {:ok, tokens, _} = :lexer.string(string)
    {:ok, tree} = :parser.parse(tokens)
    tree
  end

  defp eval {:number, val} do

    try do
      List.to_float(elem(val, 0))
    rescue
      ArgumentError -> List.to_integer(elem(val, 0))
    end
  end

  defp eval {:negative, val} do
    -1 * eval(val)
  end

  defp eval {:add, val} do
    eval(elem(val, 0)) + eval(elem(val, 1))
  end

  defp eval {:mult, val} do
    eval(elem(val, 0)) * eval(elem(val, 1))
  end

  defp eval {:divd, val} do
    eval(elem(val, 0)) / eval(elem(val, 1))
  end

end