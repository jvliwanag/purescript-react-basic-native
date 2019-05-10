module React.Basic.Native.Styles.Image where

import React.Basic.Native.PropTypes.Color (Color)
import React.Basic.Native.Styles (StyleProp, unsafeStyleProp)

-- Changes the color of all the non-transparent pixels to the tintColor.
tintColor :: Color -> StyleProp
tintColor = unsafeStyleProp "tintColor"

androidOverlayColor :: Color -> StyleProp
androidOverlayColor = unsafeStyleProp "overlayColor"
