defmodule PatoWeb.UserView do
  use PatoWeb, :view

  def render("show.json", %{user: user}) do
    %{data: render_one(user, __MODULE__, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      login: user.login,
      password: user.password
    }
  end
end
