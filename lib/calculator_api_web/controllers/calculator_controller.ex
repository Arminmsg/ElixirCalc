defmodule CalculatorApiWeb.CalculatorController do
  use CalculatorApiWeb, :controller

  def calculate(conn, params) do
    user_input = params["data"]["expression"]
    result = CalculatorApi.Calculator.calculate(user_input)

    case result do
      {:ok, value} -> json(conn, %{data: %{result: value}})
      {:error, value} -> conn |> put_status(501) |> json(%{data: [], message: "Not Implemented"})
    end

  end

end