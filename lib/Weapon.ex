
# Compiled using Elmchemy v0.3.31
defmodule Weapon do
  use Elmchemy

  @spec new(String.t, integer, integer) :: %{
    name: String.t,
    level: integer,
    damage: integer
  }
  curry new/3
  def new(name, level, dmg) do
    (fn(arg1) -> fn(arg2) -> fn(arg3) -> %{name: arg1, level: arg2, damage: arg3} end end end).(name).(level).(dmg)
  end

end
