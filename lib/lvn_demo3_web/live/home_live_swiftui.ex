defmodule LvnDemo3Web.HomeLive.SwiftUI do
  use LiveViewNative.Component,
    format: :swiftui,
    as: :render,
    layout: {LvnDemo3Web.LayoutsSwiftUI, :app}

  def render(assigns, %{target: "watchos"}) do
    ~LVN"""
    <Text>Hello, watch!</Text>
    """
  end
  
  def render(assigns, _interface) do
    ~LVN"""
    <Text>Hello, team!</Text>
    """
  end
end