import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :glorious, Glorious.Repo,
  username: "postgres",
  password: "postgres",
  database: "glorious_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :glorious_web, GloriousWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "STiqaJxNDon2c5GUrwmyDeoNBQUuzZ7Bx+HF6z+Ob6OQAhbnj54SVl/zpJ8c1yHM",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :glorious, Glorious.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
