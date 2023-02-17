module Template exposing
    ( Template
    , make
    , updateFirst, updateSecond
    )

{-| A library for a template type.


# Definition

@docs Template


# Create

@docs make


# Update

@docs updateFirst, updateSecond

-}

--import List.Extra


{-| A list type that must contain at least one element
-}
type alias Template =
    ( String, String )


{-| Create a new `Template`

    make "hello" == ( "hello", "hello" )

-}
make : String -> Template
make s =
    ( s, s )


{-| Change the first string

    ( "hello", "hello" ) |> updateFirst "world" == ( "world", "hello" )

-}
updateFirst : String -> Template -> Template
updateFirst s template =
    Tuple.mapFirst (\_ -> s) template


{-| Change the second string

    ( "hello", "hello" ) |> updateSecond "world" == ( "hello", "world" )

-}
updateSecond : String -> Template -> Template
updateSecond s template =
    Tuple.mapSecond (\_ -> s) template
