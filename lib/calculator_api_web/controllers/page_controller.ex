defmodule CalculatorApiWeb.PageController do
  use CalculatorApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
