defmodule CalculatorApi.Calculator do
  @moduledoc """
    Functions to make calculations on strings
  """

  @spec calculate(String.t()) :: {:ok, float} | {:error, String.t()}
  def calculate string do
    try do
      input = String.to_charlist(string)
      {:ok, eval(parse(input))}
    rescue
      MatchError -> {:error, "Invalid Input"}
    end

  end

  defp parse string do
      {:ok, tokens, _} = :lexer.string(string)
      {:ok, tree} = :parser.parse(tokens)
      tree
  end

  defp eval {:number, val} do
    CalculatorApi.Util.charlist_to_float(elem(val, 0))
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