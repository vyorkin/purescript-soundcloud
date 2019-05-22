module SoundCloud.Options
  ( Options
  , InitializeOptions
  , clientId
  , redirectUri
  ) where

import Data.Options (Option, opt)
import Data.Options as O

data InitializeOptions
type Options = O.Options InitializeOptions

clientId ∷ Option InitializeOptions String
clientId = opt "client_id"

redirectUri ∷ Option InitializeOptions String
redirectUri = opt "redirect_uri"
