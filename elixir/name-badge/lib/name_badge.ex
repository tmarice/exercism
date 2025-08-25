defmodule NameBadge do
  def print(id, name, department) do
    badge_number = if id, do: "[#{id}] - ", else: ""
    department = if department, do: department |> String.upcase, else: "OWNER"
    "#{badge_number}#{name} - #{department}"
  end
end
