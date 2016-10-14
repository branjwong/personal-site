module Model exposing (..)

import Window exposing (Size)
import Random exposing (Seed)
import Time exposing (Time)


type alias Model =
    { page : Page
    , size : Size
    , problem : Maybe Problem
    }


type Page
    = Home
    | Programming
    | Teaching TeachingPage
    | Writing WritingPage


type TeachingPage
    = TeachingHome
    | FactoringTrinomials
    | TrinomialGenerator
    | Tutor TutorPage


type TutorPage
    = Plug
    | MathTen
    | MathEleven
    | PhysicsEleven
    | PhysicsTwelve
    | PrecalcEleven
    | PrecalcTwelve
    | Japanese


type WritingPage
    = Archive
    | CrossGame
    | WhatIAmDoingWithMyLife
    | MovingBackToJapan


type Msg
    = NoOp
    | Resize Size
    | ToTop Bool
    | WorksheetMsg WorksheetMsg'



-- Trinomial Generator Worksheet


type alias Problem =
    { factored : ( Int, Int, Int, Int )
    , trinomial : ( Int, Int, Int )
    , seed : Seed
    , answer : Display
    }


type Display
    = Hidden
    | Shown


type WorksheetMsg'
    = New
    | Show
    | Tick Time