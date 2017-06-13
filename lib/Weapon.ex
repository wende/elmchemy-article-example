
# Compiled using Elmchemy v0.3.31
defmodule Weapon do
  use Elmchemy

  import Entity, only: []
  @spec new(String.t, integer, integer) :: %{
    name: String.t, 
    level: integer, 
    damage: integer
  }
  curry new/3
  def new(name, level, dmg) do
    %{name: name, level: level, damage: dmg}
  end

end
