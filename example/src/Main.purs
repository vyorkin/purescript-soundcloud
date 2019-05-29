module Main (main) where

import Prelude

import Data.Options ((:=))
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Effect.Console (log) as Console
import SoundCloud (redirectUri)
import SoundCloud as SC
import Web.Event.EventTarget (addEventListener, eventListener)
import Web.HTML (window)
import Web.HTML.Event.EventTypes as Event
import Web.HTML.Window (toEventTarget) as Window

onLoad ∷ ∀ a. Effect a → Effect Unit
onLoad handler = do
  target ← Window.toEventTarget <$> window
  listener ← eventListener $ const handler
  addEventListener Event.load listener false target

main ∷ Effect Unit
main = onLoad do
  SC.initialize clientId $ redirectUri := successUrl
  launchAff_ do
    session ← SC.connect
    liftEffect $ Console.log $ "oauth token: " <> session.oauthToken
  where
    clientId = "6e66f316dfe62dd5b5fdb0e4f0eb4eb3"
    successUrl = "http://localhost:9292/auth/soundcloud/callback"
