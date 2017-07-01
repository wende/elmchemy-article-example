module Weapon exposing (..)


type alias Weapon =
    { name : String, level : Int, damage : Int }


new : String -> Int -> Int -> Weapon
new name level dmg =
    Weapon name level dmg
