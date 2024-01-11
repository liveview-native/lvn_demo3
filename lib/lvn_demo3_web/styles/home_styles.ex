defmodule LvnDemo3Web.HomeStyles do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
  "color-" <> color do
    foregroundStyle(to_ime(color))
  end

  "bold" do
    bold(true)
  end

  "italic" do
    italic(true)
  end

  "bg-circle" do
    background(content: :circle)
  end

  "fill-" <> color do
    fill(to_ime(color))
  end
  """
end