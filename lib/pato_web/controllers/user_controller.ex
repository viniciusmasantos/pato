defmodule PatoWeb.UserController do
  use PatoWeb, :controller

  action_fallback PatoWeb.FallbackController

  def create(conn, params) do
    with {:ok, user} <- Pato.Auth.create_user(params) do
      conn
      |> put_status(201)
      |> render("show.json", user: user)
    end
  end

  def update(conn, params) do
    user = Pato.Auth.get_user!(params["id"])

    with {:ok, user} <- Pato.Auth.update_user(user, params) do
      render(conn, "show.json", user: user)
    end
  end
end
