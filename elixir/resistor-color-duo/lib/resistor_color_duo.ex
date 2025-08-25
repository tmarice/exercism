defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """

  @resistor_values %{
    :black => 0,
    :brown => 1,
    :red => 2,
    :orange => 3,
    :yellow => 4,
    :green => 5,
    :blue => 6,
    :violet => 7,
    :grey => 8,
    :white => 9,
  }

  @spec value(colors :: [atom]) :: integer
  def value([]), do: 0
  def value([color]), do: @resistor_values[color]
  def value([first_color, second_color | _tail]) do
    @resistor_values[first_color] * 10 + @resistor_values[second_color]
  end
end
