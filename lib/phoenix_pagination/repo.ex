defmodule PhoenixPagination.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_pagination,
    adapter: Ecto.Adapters.Postgres

  use Scrivener, page_size: 5
end
