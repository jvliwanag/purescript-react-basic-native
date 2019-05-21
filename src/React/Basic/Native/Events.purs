module React.Basic.Native.Events where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import React.Basic.Events (EventFn, unsafeEventFn)
import Unsafe.Coerce (unsafeCoerce)

foreign import data NativeSyntheticEvent :: Type -> Type

type EventHandler n = EffectFn1 (NativeSyntheticEvent n) Unit

handler :: forall n a. EventFn (NativeSyntheticEvent n) a -> (a -> Effect Unit) -> EventHandler n
handler efn cb = mkEffectFn1 $ (unsafeCoerce efn) >>> cb -- workaround since no access to EventFn constructor

timeStamp :: forall a. EventFn (NativeSyntheticEvent a) Number
timeStamp = unsafeEventFn \e -> (unsafeCoerce e).timeStamp

nativeEvent :: forall a. EventFn (NativeSyntheticEvent a) a
nativeEvent = unsafeEventFn \e -> (unsafeCoerce e).nativeEvent
