module SoundCloud
  ( initialize
  , module SoundCloud.Options
  ) where

import Prelude

import SoundCloud.Options (clientId, redirectUri)
import SoundCloud.Options as SoundCloud
import Data.Options (options)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Foreign (Foreign)

foreign import _initialize ∷ EffectFn1 Foreign Unit

initialize ∷ SoundCloud.Options → Effect Unit
initialize opts = runEffectFn1 _initialize (options opts)
