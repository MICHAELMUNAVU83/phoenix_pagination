defmodule PhoenixPaginationWeb.BookLive.Show do
  use PhoenixPaginationWeb, :live_view

  alias PhoenixPagination.Books

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:book, Books.get_book!(id))}
  end

  defp page_title(:show), do: "Show Book"
  defp page_title(:edit), do: "Edit Book"
end
