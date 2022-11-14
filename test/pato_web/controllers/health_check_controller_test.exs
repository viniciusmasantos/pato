defmodule HealthCheckControllerTest do
  use PatoWeb.ConnCase

  describe "ping" do
    test "returns :ok when valid data", %{conn: conn} do
      conn = get(conn, "/api/ping")

      assert json_response(conn, 200)
    end
  end
end
