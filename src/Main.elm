module Main exposing (f, view)

import Html exposing (Html)


f : Int -> String
f i =
    String.fromInt <| i + 1


view : Html msg
view =
    Html.text <| "a" ++ "b"
