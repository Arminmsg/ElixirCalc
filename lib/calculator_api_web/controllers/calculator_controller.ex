defmodule CalculatorApiWeb.CalculatorController do
  use CalculatorApiWeb, :controller

  def calculate(conn, params) do
    user_input = params["data"]["expression"]
    json(conn, %{data: %{result: CalculatorApi.Calculator.calculate(user_input)}})
  end

end