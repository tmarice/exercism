defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(actual_minutes_in_oven) do
    expected_minutes_in_oven() - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(num_layers), do: 2 * num_layers

  def total_time_in_minutes(num_layers, minutes_in_oven) do
    preparation_time_in_minutes(num_layers) + minutes_in_oven
  end

  def alarm(), do: "Ding!"

end
