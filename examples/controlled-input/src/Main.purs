module Main where

import Prelude

import Data.Maybe (Maybe(..), maybe)
import React.Basic (Component, JSX, createComponent, make)
import React.Basic (fragment) as React
import React.Basic.Native (string, text, textInput) as RN
import React.Basic.Native.Events (handler, nativeEvent)

app :: JSX
app = controlledInput unit

type Props = Unit

component :: Component Props
component = createComponent "ControlledInput"

controlledInput :: Props -> JSX
controlledInput = make component
  { initialState:
    { value: "hello world"
    , timestamp: (Nothing :: Maybe Number)
    }
  , render: \self ->
      React.fragment
      [ RN.textInput
        { key: "1"
        , onChange:
          handler nativeEvent \ne ->
          self.setState (_ { value = ne.text })
        , value: self.state.value
        }
        , RN.text { key : "2", children : [ RN.string ("Current value = " <> show self.state.value) ] }
        , RN.text { key : "3", children : [ RN.string ("Changed at = " <> maybe "never" show self.state.timestamp) ] }
        ]
  }
