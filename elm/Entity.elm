module Entity exposing (Entity)


type alias Entity t =
    { t
        | name : String
    }
