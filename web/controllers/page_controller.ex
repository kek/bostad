defmodule Bostad.PageController do
  use Bostad.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
