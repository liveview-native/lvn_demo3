defmodule LvnDemo3.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LvnDemo3.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> LvnDemo3.Accounts.create_user()

    user
  end
end
