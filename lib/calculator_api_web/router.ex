defmodule CalculatorApiWeb.Router do
  use CalculatorApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CalculatorApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", CalculatorApiWeb do
     pipe_through :api

     post "/calculator", CalculatorController, :calculate
  end
end
