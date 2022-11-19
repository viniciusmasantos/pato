defmodule UserControllerTest do
  use PatoWeb.ConnCase

  import Pato.Factory

  describe "create" do
    test "returns ok when valid data", %{conn: conn} do
      params = %{login: "Bolsonaro", password: "mito"}

      conn = post(conn, "/api/users", params)

      assert %{"data" => subject} = json_response(conn, 201)
      assert subject["login"] == params.login
      assert subject["password"] == params.password
    end

    test "returns error when invalid data", %{conn: conn} do
      params = %{}

      conn = post(conn, "/api/users", params)

      assert json_response(conn, 422)
    end
  end

  describe "update" do
    test " returns ok when valid data", %{conn: conn} do
      user = insert(:user)
      params = %{password: "senha"}

      conn = put(conn, "/api/users/#{user.id}", params)

      assert %{"data" => subject} = json_response(conn, 200)
      assert subject["login"] == user.login
      assert subject["id"] == user.id
      assert subject["password"] == params.password
    end
  end
end
