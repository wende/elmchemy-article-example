
# Compiled using Elmchemy v0.3.31
defmodule Character do
  use Elmchemy

  import Weapon, only: []
  #  Type tagging
  @type gender :: :male | :female | :other

  #  Type aliasing
  #  Type alias building
  @spec new(String.t, String.t, gender) :: %{
    name: String.t,
    surname: String.t,
    gender: gender,
    health: {integer, integer},
    stats: %{
      strength: integer,
      intelligence: integer,
      vitality: integer
    },
    arm: {%{
      name: String.t,
      level: integer,
      damage: integer
    }} | nil
  }
  curry new/3
  def new(name, surname, gender) do
    (fn(arg1) -> fn(arg2) -> fn(arg3) -> fn(arg4) -> fn(arg5) -> fn(arg6) -> %{name: arg1, surname: arg2, gender: arg3, health: arg4, stats: arg5, arm: arg6} end end end end end end).(name).(surname).(gender).({100, 100}).((fn(arg1) -> fn(arg2) -> fn(arg3) -> %{strength: arg1, intelligence: arg2, vitality: arg3} end end end).(0).(0).(0)).(nil)
  end

  #  Operator defining
  @spec op7op6__({any, any}, (any -> any)) :: {any, any}
  curry op7op6__/2
  def op7op6__(tuple, f) do
    XTuple.map_first.(f).(tuple)
  end

  @spec op6op8__({any, any}, (any -> any)) :: {any, any}
  curry op6op8__/2
  def op6op8__(tuple, f) do
    XTuple.map_second.(f).(tuple)
  end

  #  Pattern matching
  @type stat :: :strength | :intelligence | :vitality

  @spec set_stat(stat, integer, %{
    name: String.t,
    surname: String.t,
    gender: gender,
    health: {integer, integer},
    stats: %{
      strength: integer,
      intelligence: integer,
      vitality: integer
    },
    arm: {%{
      name: String.t,
      level: integer,
      damage: integer
    }} | nil
  }) :: %{
    name: String.t,
    surname: String.t,
    gender: gender,
    health: {integer, integer},
    stats: %{
      strength: integer,
      intelligence: integer,
      vitality: integer
    },
    arm: {%{
      name: String.t,
      level: integer,
      damage: integer
    }} | nil
  }
  curry set_stat/3
  def set_stat(stat, value, character) do
    stats = character.stats
    case stat do
      :strength ->
        %{character | stats: %{stats | strength: value}}
      :intelligence ->
        %{character | stats: %{stats | intelligence: value}}
      :vitality ->
        %{character | stats: %{stats | vitality: value}, health: op6op8__(op7op6__(character.health, (&+/0).().(( ( value - character.stats.vitality ) * 10 ))), always.(( 100 + ( 10 * value ) )))}
    end
  end

  @spec equip(%{
    name: String.t,
    level: integer,
    damage: integer
  }, %{
    name: String.t,
    surname: String.t,
    gender: gender,
    health: {integer, integer},
    stats: %{
      strength: integer,
      intelligence: integer,
      vitality: integer
    },
    arm: {%{
      name: String.t,
      level: integer,
      damage: integer
    }} | nil
  }) :: Elmchemy.XResult.result
  curry equip/2
  def equip(weapon, character) do
    if ( weapon.level < character.stats.intelligence ) do {:ok, %{character | arm: {weapon}}} else {:error, "Too dumb"} end
  end

end
