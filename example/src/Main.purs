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

  -- so... without the line below nothing is going to happen
  -- (the SoundCloud popup window won't show up, uncomment to see the popup window)

  -- launchAff_ aff
