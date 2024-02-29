# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# config :videogame,
#   ecto_repos: [Videogame.Repo]

# Configures the endpoint
config :videogame, VideogameWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Zhh96TQMI9Kq9+vVu7bcFIVRx3xaHJUH8+D4dLpoi4ujQbchWkWl9b1gE4QXmTK0",
  render_errors: [view: VideogameWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Videogame.PubSub,
  live_view: [signing_salt: "zb2abSPq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
