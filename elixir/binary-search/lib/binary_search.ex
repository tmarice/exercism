defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}
  """
  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key) do
    binary_search(numbers, 0, tuple_size(numbers) - 1, key)
  end

  def binary_search(numbers, lo, hi, key) when lo == hi and elem(numbers, lo) == key, do: {:ok, lo}
  def binary_search(_numbers, lo, hi, _key) when lo >= hi, do: :not_found
  def binary_search(numbers, lo, hi, key) when lo < hi do
    mid = div(lo + hi + 1, 2)
    cond do
      elem(numbers, mid) > key -> binary_search(numbers, lo, mid - 1, key)
      true -> binary_search(numbers, mid, hi, key)
    end
  end
end
