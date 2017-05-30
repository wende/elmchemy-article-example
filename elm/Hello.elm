module Hello exposing (..)

{-| Prints "world!"

    hello == "world!"

-}


hello : String
hello =
    "world!"


{-| Returns a sum of every integer in the function

    sum [1, 2, 3] == 6
    sum [10] == 10
    sum [] == 0

-}
sum : List Int -> Int
sum list =
    case list of
        first :: rest ->
            first + (sum rest)

        [] ->
            0
