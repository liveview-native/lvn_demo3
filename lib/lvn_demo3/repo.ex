defmodule LvnDemo3.Repo do
  use Ecto.Repo,
    otp_app: :lvn_demo3,
    adapter: Ecto.Adapters.Postgres
end
