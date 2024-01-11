defmodule LvnDemo3Web.UserLive do
  use LvnDemo3Web, :live_view
  use LiveViewNative.LiveView,
    formats: [:swiftui],
    layouts: [
      swiftui: {LvnDemo3Web.LayoutsSwiftUI, :app},
    ]
end