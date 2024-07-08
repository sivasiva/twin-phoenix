defmodule Twinvim.Repo do
  use Ecto.Repo,
    otp_app: :twinvim,
    adapter: Ecto.Adapters.Postgres
end
