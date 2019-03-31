defmodule CalculatorApi.Util do
  @moduledoc """
    Utility functions for Calculator module
  """

  @spec charlist_to_float([String.Chars]) :: float
  def charlist_to_float charlist do
    try do
      List.to_float(charlist)
    rescue
      ArgumentError -> List.to_integer(charlist)/1
    end
  end

end
