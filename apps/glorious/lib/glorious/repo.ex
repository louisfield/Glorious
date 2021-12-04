defmodule Glorious.Repo do
  use Ecto.Repo,
    otp_app: :glorious,
    adapter: Ecto.Adapters.Postgres
end
