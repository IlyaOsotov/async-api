# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :async_api,
  ecto_repos: [AsyncApi.Repo]

# Configures the endpoint
config :async_api, AsyncApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LUitvDVjBNaRIayJvW4sGhiJ1ui+IwptQ8NtKEOHUEbGNT4Px2CeWVXhXg0ULOKD",
  render_errors: [view: AsyncApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AsyncApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
