module TemplateTest exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (..)
import Template exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "Template"
        [ describe "Template.make"
            [ test "handles basic operation" <|
                \_ ->
                    Template.make "hello"
                        |> Expect.equal ( "hello", "hello" )
            ]
        ]
