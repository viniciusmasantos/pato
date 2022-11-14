defmodule Pato.Repo do
  use Ecto.Repo,
    otp_app: :pato,
    adapter: Ecto.Adapters.Postgres
end
