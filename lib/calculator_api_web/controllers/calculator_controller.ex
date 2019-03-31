defmodule CalculatorApiWeb.CalculatorController do
  use CalculatorApiWeb, :controller

  def calculate(conn, params) do
    json(conn, params)
  end

end