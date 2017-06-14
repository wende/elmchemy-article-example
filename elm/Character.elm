module Character exposing (..)


type alias Character =
    { name : String
    , surname : String
    , gender : Gender
    , health : ( Int, Int )
    }


type alias Stats =
    { strength : Int
    , intelligence : Int
    , vitality : Int
    }



-- Type tagging


type Gender
    = Male
    | Female
    | Other



-- Type aliasing
-- Type alias building


new : String -> String -> Gender -> Character
new name surname gender =
    Character
        name
        surname
        gender
        ( 100, 100 )



-- Operator defining


(<$) : ( a, b ) -> (a -> a2) -> ( a2, b )
(<$) tuple f =
    Tuple.mapFirst f tuple


($>) : ( a, b ) -> (b -> b2) -> ( a, b2 )
($>) tuple f =
    Tuple.mapSecond f tuple



-- Pattern matching


type Stat
    = Strength
    | Intelligence
    | Vitality



-- setStat : Stat -> Int -> Character -> Character
-- setStat stat value character =
--     let
--         stats =
--             character.stats
--
--         getHp ( current, total ) =
--             current // total
--     in
--         case stat of
--             Strength ->
--                 { character
--                     | stats = { stats | strength = value }
--                 }
--
--             Intelligence ->
--                 { character
--                     | stats = { stats | intelligence = value }
--                 }
--
--             Vitality ->
--                 { character
--                     | stats = { stats | vitality = value }
--                     , health =
--                         character.health
--                             <$ (+) ((value - character.stats.vitality) * 10)
--                             $> always (100 + 10 * value)
--                 }
-- Result
--
-- equip : Weapon -> Character -> Result String Character
-- equip weapon character =
--     if weapon.level < character.stats.intelligence then
--         Ok { character | arm = Just weapon }
--     else
--         Err "Too dumb"
