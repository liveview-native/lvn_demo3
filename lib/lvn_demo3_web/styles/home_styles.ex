defmodule HomeStyles do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
  "color" do
    foregroundStyle(Color(.sRGB, red: 0.4627, green: 0.8392, blue: 1.0))
  end
  "color-member" do
    foregroundStyle(Color.pink)
    foregroundStyle(.pink)
  end
  "color-opacity" do
    foregroundStyle(.pink.opacity(0.5))
    foregroundStyle(Color.pink.opacity(0.5))
  end
  "color-white" do
    foregroundStyle(Color(.sRGB, white: 0.5, opacity: 0.5))
  end
  "color-hsb" do
    foregroundStyle(Color(hue: 1, saturation: 0.5, brightness: 0.25, opacity: 0.75))
  end
  "any-gradient" do
    foregroundStyle(Color.red.gradient)
    foregroundStyle(Color.pink.opacity(0.5).gradient)
  end
  """
end
