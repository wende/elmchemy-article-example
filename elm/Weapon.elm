module Weapon exposing (..)

import Entity exposing (Entity)


type alias Weapon =
    Entity { level : Int, damage : Int }


new : String -> Int -> Int -> Weapon
new name level dmg =
    { name = name, level = level, damage = dmg }
