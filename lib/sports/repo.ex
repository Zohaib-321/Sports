defmodule Sports.Repo do
  use Ecto.Repo,
    otp_app: :sports,
    adapter: Ecto.Adapters.Postgres
end
