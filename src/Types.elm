module Types exposing (..)

import Array exposing (Array)
import Mouse


{-| Simplified pyramid definition, so that the
base polygon always lies in the z=0 plane.

Assume only a single pyramid tip, because it guarantees
unambiguous triangular sides.

-}
type alias Model =
    Pyramid


type Msg
    = NewPoint
    | RemovePoint
    | ChangePoint Point Int
    | Random
    | MouseMsg Mouse.Position



-- | DragStart Point
-- | DragAt Point
-- | DragEnd Point


type alias Pyramid =
    { basePolygon : Array Point
    , top : Point
    , height : Float
    }


type alias Edge =
    { start : Point
    , end : Point
    }


type alias Point =
    { x : Float
    , y : Float
    }
