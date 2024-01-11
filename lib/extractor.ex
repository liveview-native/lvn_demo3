defmodule Extractor do
  @broad_match_global_regexp [
    ~r/(?:\['([^'\s]+[^<>"'`\s:\\])')/,
    ~r/(?:\["([^"\s]+[^<>"'`\s:\\])")/,
    ~r/(?:\[`([^`\s]+[^<>"'`\s:\\])`)/,
    ~r/([^<>"'`\s]*\[\w*'[^"`\s]*'?\])/,
    ~r/([^<>"'`\s]*\[\w*"[^'`\s]*"?\])/,
    ~r/([^<>"'`\s]*\[\w*\('[^"'`\s]*'\)\])/,
    ~r/([^<>"'`\s]*\[\w*\("[^"'`\s]*"\)\])/,
    ~r/([^<>"'`\s]*\[\w*\('[^"`\s]*'\)\])/,
    ~r/([^<>"'`\s]*\[\w*\("[^'`\s]*"\)\])/,
    ~r/([^<>"'`\s]*\['[^"'`\s]*'\])/,
    ~r/([^<>"'`\s]*\["[^"'`\s]*"\])/,
    ~r/([^<>"'`\s]*\[[^<>"'`\s]*:'[^"'`\s]*'\])/,
    ~r/([^<>"'`\s]*\[[^<>"'`\s]*:"[^"'`\s]*"\])/,
    ~r/([^<>"'`\s]*\[[^"'`\s]+\][^<>"'`\s]*)/,
    ~r/([^<>"'`\s]*[^"'`\s:\\])/
  ]
  |> Enum.map(&Regex.source/1)
  |> Enum.join("|")
  |> Regex.compile!()

  @inner_match_global_regexp ~r/[^<>"'`\s.(){}[\]#=%]*[^<>"'`\s.(){}[\]#=%:]/

  def scan(content) do
    broad_matches = Regex.scan(@broad_match_global_regexp, content)
    inner_matches = Regex.run(@inner_match_global_regexp, content)

    [broad_matches, inner_matches]
  end
end