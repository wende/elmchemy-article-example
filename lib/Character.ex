
# Compiled using Elmchemy v0.3.31
defmodule Character do
  use Elmchemy

  #  Type tagging
  @type gender :: :male | :female | :other

  #  Type aliasing
  #  Type alias building
  @spec new(String.t, String.t, gender) :: %{
    name: String.t,
    surname: String.t,
    gender: gender,
    health: {integer, integer}
  }
  curry new/3
  def new(name, surname, gender) do
    (fn(arg1) -> fn(arg2) -> fn(arg3) -> fn(arg4) -> %{name: arg1, surname: arg2, gender: arg3, health: arg4} end end end end).(name).(surname).(gender).({100, 100})
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

  #  setStat : Stat -> Int -> Character -> Character
  #  setStat stat value character =
  #      let
  #          stats =
  #              character.stats

  #          getHp ( current, total ) =
  #              current // total
  #      in
  #          case stat of
  #              Strength ->
  #                  { character
  #                      | stats = { stats | strength = value }
  #                  }

  #              Intelligence ->
  #                  { character
  #                      | stats = { stats | intelligence = value }
  #                  }

  #              Vitality ->
  #                  { character
  #                      | stats = { stats | vitality = value }
  #                      , health =
  #                          character.health
  #                              <$ (+) ((value - character.stats.vitality) * 10)
  #                              $> always (100 + 10 * value)
  #                  }
  #  Result

  #  equip : Weapon -> Character -> Result String Character
  #  equip weapon character =
  #      if weapon.level < character.stats.intelligence then
  #          Ok { character | arm = Just weapon }
  #      else
  #          Err "Too dumb"
end
