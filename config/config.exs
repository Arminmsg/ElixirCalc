# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :calculator_api, CalculatorApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "j5q8YXvnUF1YWUlFM1/3Z4gaq2vLIvwZzYdZAENR+4qDaXP5McRrm0ggS9NYA6Ns",
  render_errors: [view: CalculatorApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CalculatorApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
