module Main (main) where

import Prelude

import Data.Options ((:=))
import Effect (Effect)
import Effect.Aff (launchAff_)
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
  SC.initialize "6e66f316dfe62dd5b5fdb0e4f0eb4eb3" $
    redirectUri := "http://localhost:9292/auth/soundcloud/callback"
  launchAff_ SC.connect
