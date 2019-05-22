module Main (main) where

import Prelude

import Data.Options ((:=))
import Effect (Effect)
import Effect.Aff (launchAff_)
import SoundCloud (clientId, redirectUri)
import SoundCloud as SC

main ∷ Effect Unit
main = do
  SC.initialize $
    clientId    := "a281614d7f34dc30b665dfcaa3ed7505" <>
    redirectUri := "http://localhost:8081/success.html"
  let aff = SC.connect
  pure unit

  -- so... without the line nothing is going to happed, just as I expected

  -- launchAff_ aff
