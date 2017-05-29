
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

end
