defmodule ForumWeb.UsersJSON do
  alias Forum.Posts.Post
  alias Forum.Accounts.Users

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(users <- users, do: data(users))}
  end

  @doc """
  Renders a single users.
  """
  def show(%{users: users}) do
    %{data: data(users)}
  end

  defp data(%Users{} = users) do
    %{
      id: users.id,
      name: users.name,
      email: users.email,
      # posts: for(post <- users.posts, do: ForumWeb.PostJSON.data(post))
    }
  end

  defp post_data(%Post{} = post) do
    %{
      id: post.id,
      title: post.title,
      body: post.body
    }
  end
end
