defmodule ElixirGistWeb.PageController do
  use ElixirGistWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
