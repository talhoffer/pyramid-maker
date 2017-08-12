module View exposing (..)

{-| Should just chain Drawing functions together
-}

import Html exposing (Html)
import Svg
import Types exposing (..)
import Drawing as D
import Perspective exposing (ViewPoint(..))
import InputFields exposing (formatInputs)


view : Model -> Html Msg
view pyramid =
    let
        -- title =
        --     D.drawTitle "Pyramid Maker"
        inputFields =
            formatInputs pyramid.basePolygon

        inputColumn =
            D.wrapInputColumn inputFields "Pyramid Maker"

        annotationsDrawing =
            []

        borderDrawing =
            []

        drawing =
            Svg.svg D.canvas <|
                (D.drawPyramid pyramid Top)
                    ++ annotationsDrawing
                    ++ [ D.border ]
    in
        Html.table []
            [ Html.tr []
                [ inputColumn
                , Html.td []
                    [ drawing
                    ]
                ]
            ]
