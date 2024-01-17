defmodule LvnDemo3Web.LayoutsSwiftUI do
  use LiveViewNative.Component,
    format: :swiftui

  import Phoenix.Controller, only: [get_csrf_token: 0]
  import LiveViewNative.Stylesheet.Component

  embed_templates "layouts_swiftui/*"
  embed_stylesheet HomeStyles
end
