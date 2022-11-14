defmodule PatoWeb.HealthCheckController do
  use PatoWeb, :controller

  def ping(conn, _params) do
    json(conn, %{a: 1})
  end
end
