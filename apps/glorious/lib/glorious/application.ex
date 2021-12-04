defmodule Glorious.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Glorious.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Glorious.PubSub}
      # Start a worker by calling: Glorious.Worker.start_link(arg)
      # {Glorious.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Glorious.Supervisor)
  end
end
