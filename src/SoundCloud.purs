module SoundCloud
  ( initialize
  , connect
  , module SoundCloud.Options
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Options (options)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Foreign (Foreign)
import SoundCloud.Options (Options, clientId, redirectUri)

foreign import _initialize ∷ EffectFn1 Foreign Unit
foreign import _connect ∷ EffectFn1 Unit (Promise Unit)

-- | Initializes the SDK.
initialize ∷ Options → Effect Unit
initialize opts = runEffectFn1 _initialize (options opts)

-- | Initiate the OAuth2 connect flow.
connect ∷ Aff Unit
connect = Promise.toAffE $ runEffectFn1 _connect unit
