defmodule Pato.Factory do
  use ExMachina.Ecto, repo: Pato.Repo

  use Pato.UserFactory
end
