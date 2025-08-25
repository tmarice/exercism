defmodule Username do
  def sanitize(~c""), do: ~c""
  def sanitize(username) do
    [head | tail] = username
    keep = case head do
      ?_ -> ~c"_"
      ?ä -> ~c"ae"
      ?ö -> ~c"oe"
      ?ü -> ~c"ue"
      ?ß -> ~c"ss"
      x when x >= ?a and x <= ?z -> [x]
      _ -> ~c""
    end

    keep ++ sanitize(tail)
  end
end
