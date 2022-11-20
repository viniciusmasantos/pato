defmodule Pato.UserFactory do
  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %Pato.Auth.User{
          login: "João",
          password: "1234"
        }
      end

      def user_minion_factory do
        %Pato.Auth.User{
          login: "Carluxo",
          password: "índio"
        }
      end
    end
  end
end
