import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mobaia, MobaiaWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "jaPoAso/KvzlYaarOFeM0q4a8PB9sLx1FRy6t+zmcOTT8HU+hfcGtkMI34D7yIRa",
  server: false

# In test we don't send emails.
config :mobaia, Mobaia.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
