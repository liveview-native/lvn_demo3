defmodule LvnDemo3Web.HomeLive do
  use LvnDemo3Web, :live_view
  use LiveViewNative.LiveView,
    formats: [:swiftui, :jetpack, :html],
    layouts: [
      swiftui: {LvnDemo3Web.LayoutsSwiftUI, :app},
      html: {LvnDemo3Web.Layouts, :app}
    ]

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :other, 123)}
  end

  def render(assigns) do
    ~H"""
    <div>Hello, World!</div>
    """
  end

  def handle_event("incr", _params, socket) do
    {:noreply, assign(socket, :count, socket.assigns.count + 1)}
  end
end