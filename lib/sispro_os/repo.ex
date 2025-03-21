defmodule SisproOs.Repo do
  use Ecto.Repo,
    otp_app: :sispro_os,
    adapter: Ecto.Adapters.Postgres
end
