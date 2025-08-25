defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  @spec compare(list, list) :: :equal | :sublist | :superlist | :unequal
  def compare(a, a), do: :equal

  def compare(a, b) do
    cond do
      subcompare?(a, b) -> :superlist
      subcompare?(b, a) -> :sublist
      true -> :unequal
    end
  end

  def subcompare?([], _), do: false

  def subcompare?(a, b) do
    List.starts_with?(a, b) or subcompare?(tl(a), b)
  end

end
