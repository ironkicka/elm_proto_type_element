module Main exposing (main)

import Browser
import Html exposing (Html,button, div, h1, text,textarea)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

-- model

type alias Model =
  { hoge :String
  ,fuga :String
  }

initModel = 
  {hoge = ""
  ,fuga = ""
  }

init : () -> ( Model, Cmd Msg )
init _ =
    (initModel ,Cmd.none)



-- update


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
      NoOp ->
        (model,Cmd.none)
       
-- subscriptions


-- subscriptions : Model -> Sub Msg
-- subscriptions model =



-- view


view : Model -> Html Msg
view model =
  div[][
    text "Hello,world"
  ]
    

-- main


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
