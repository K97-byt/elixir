defmodule ElixirBlogWeb.PageController do
  use ElixirBlogWeb, :controller

  alias ElixirBlog.Blog

  def home(conn, _params) do
    recent_posts = Blog.list_posts(limit: 3)
    render(conn, :home, recent_posts: recent_posts)
  end
end
