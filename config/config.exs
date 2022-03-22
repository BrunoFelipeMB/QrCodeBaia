# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :ex_aws,
  debug_requests: true,
  access_key_id: ["AKIA54WKV4WSKZM3WG3R"],
  secret_access_key: ["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"],
  region: "sa-east-1"

# Configures the endpoint
config :mobaia, MobaiaWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: MobaiaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Mobaia.PubSub,
  live_view: [signing_salt: "Nvn2jk5C"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :mobaia, Mobaia.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
