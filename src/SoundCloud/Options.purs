module SoundCloud.Options
  ( Options
  , InitializeOptions
  , clientId
  , redirectUri
  , oauthToken
  ) where

import Data.Options (Option, opt)
import Data.Options as O

data InitializeOptions
type Options = O.Options InitializeOptions

-- | You application's client id.
clientId ∷ Option InitializeOptions String
clientId = opt "client_id"

-- | Only needed if you want to authenticate users.
redirectUri ∷ Option InitializeOptions String
redirectUri = opt "redirect_uri"

-- | Allows to reuse an access token.
oauthToken ∷ Option InitializeOptions String
oauthToken = opt "oauth_token"
