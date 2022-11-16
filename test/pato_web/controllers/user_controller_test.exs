defmodule UserControllerTest do
  use PatoWeb.ConnCase

  describe "create" do
    test "returns ok when valid data", %{conn: conn} do
      params = %{login: "Bolsonaro", password: "mito"}

      conn = post(conn, "/api/users" , params)

      assert %{"data" => subject} = json_response(conn, 201)
      assert subject["login"] == params.login
      assert subject["password"] == params.password
    end

    test "returns error when invalid data", %{conn: conn} do
      params = %{}

      conn = post(conn, "api/users", params)

      assert json_response(conn, 422)
    end
  end
end
