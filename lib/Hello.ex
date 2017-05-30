
# Compiled using Elmchemy v0.3.7
defmodule Hello do
  use Elmchemy

  @doc """
  Prints "world!"
  
  
      iex> import Hello
      iex> hello
      "world!"
  
  
 
  """
  @spec hello() :: String.t
  def hello() do
    "world!"
  end

  @doc """
  Returns a sum of every integer in the function
  
  
      iex> import Hello
      iex> sum.([1, 2, 3])
      6
  
      iex> import Hello
      iex> sum.([10])
      10
  
      iex> import Hello
      iex> sum.([])
      0
  
  
 
  """
  @spec sum() :: (list(integer) -> integer)
  @spec sum(list(integer)) :: integer
  curry sum/1
  def sum([first | rest]) do
    first + sum.(rest)
  end
  def sum([]) do
    0
  end

end
