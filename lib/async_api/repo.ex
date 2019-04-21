defmodule AsyncApi.Repo do
  use Ecto.Repo,
    otp_app: :async_api,
    adapter: Ecto.Adapters.Postgres
end
