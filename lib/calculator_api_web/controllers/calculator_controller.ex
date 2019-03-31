defmodule CalculatorApiWeb.CalculatorController do
  use CalculatorApiWeb, :controller

  def calculate(conn, _params) do
    json(conn, "post received")
  end

end