defmodule ElixirBlog.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :content, :string
    field :published, :boolean, default: false
    field :author, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :published, :author])
    |> validate_required([:title, :content, :published, :author])
  end
end
