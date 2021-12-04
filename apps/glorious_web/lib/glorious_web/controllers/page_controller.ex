defmodule GloriousWeb.PageController do
  use GloriousWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
