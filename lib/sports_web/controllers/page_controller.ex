defmodule SportsWeb.PageController do
  use SportsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
