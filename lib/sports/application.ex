defmodule Sports.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Sports.Repo,
      # Start the Telemetry supervisor
      SportsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Sports.PubSub},
      # Start the Endpoint (http/https)
      SportsWeb.Endpoint
      # Start a worker by calling: Sports.Worker.start_link(arg)
      # {Sports.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Sports.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SportsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
