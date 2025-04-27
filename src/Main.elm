module Main exposing (main)

import Browser
import Html exposing (Html, button, div, h5, img, p, text)
import Html.Attributes exposing (alt, class, id, src, style)
import Html.Events exposing (onClick)



--init


type alias Model =
    { count : Int }


type Msg
    = Increment
    | Decrement
    | Reset


init : () -> ( Model, Cmd Msg )
init () =
    ( { count = 0 }, Cmd.none )



--Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( { model | count = model.count + 1 }, Cmd.none )

        Decrement ->
            ( { model | count = model.count - 1 }, Cmd.none )

        Reset ->
            ( { model | count = 0 }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- main : () Program () Model Msg


main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


view : Model -> Html Msg
view model =
    div
        [ id "main"
        ]
        [ div
            [ class "text-xl font-bold underline mt-12 text-center"
            ]
            [ text "You must see a message in bold, underline and text-xl size with margin mt-12."
            ]
        , div [ class "flex items-center flex-col text-lg" ]
            [ text "Also an image centered horizontally"
            , img
                [ src "require:src/images/placeholder.png"
                , alt "image placehoder"
                , style "width" "48px"
                ]
                []
            , p [ style "font-size" "4px", class "mt-0" ] [ text "Copyright issue: png image from pngtree.com" ]
            ]
        , p [ class "text-center mt-12" ] [ text "Nothing fancier for now!" ]
        , div [ class "mt-4 flex justify-center" ]
            [ div [ class "card bg-blue-100" ]
                [ div [ class "card-body  space-y-3" ]
                    [ h5 [ class "card-title" ] [ text "Here goes the counter app" ]
                    , p [ class "text-center text-lg" ] [ text ("counter: " ++ String.fromInt model.count) ]
                    , div [ class "card-actions justify-center" ]
                        [ button
                            [ onClick Increment
                            , buttonClass
                            ]
                            [ text "Add 1" ]
                        , button [ onClick Decrement, buttonClass ] [ text "Minus 1" ]
                        , button [ onClick Reset, buttonClass ] [ text "Reset" ]
                        ]
                    ]
                ]
            ]
        ]


buttonClass : Html.Attribute Msg
buttonClass =
    class "btn btn-accent"
