module Hello exposing (..)

{-| Prints "world!"

    hello == "world!"

-}


hello : String
hello =
    "world!"


sum : List a -> Int
sum list =
    case list of
        [] ->
            0

        first :: rest ->
            first + (sum rest)


wtf =
    sum [ 1, 2, 3, "a" ]
