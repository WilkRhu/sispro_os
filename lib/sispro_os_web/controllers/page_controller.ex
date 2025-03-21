defmodule SisproOsWeb.PageController do
  use SisproOsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
