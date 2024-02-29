defmodule Videogame.Repo do
  use Ecto.Repo,
    otp_app: :videogame,
    adapter: Ecto.Adapters.Postgres
end
