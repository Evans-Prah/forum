defmodule Forum.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Forum.Accounts` context.
  """

  @doc """
  Generate a unique users email.
  """
  def unique_users_email, do: "some email#{System.unique_integer([:positive])}"

  @doc """
  Generate a users.
  """
  def users_fixture(attrs \\ %{}) do
    {:ok, users} =
      attrs
      |> Enum.into(%{
        email: unique_users_email(),
        name: "some name"
      })
      |> Forum.Accounts.create_users()

    users
  end
end
