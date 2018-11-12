module Main where

import Web.Spock
import Web.Spock.Config

app :: SpockM () () () ()
let app = return ()

main :: IO ()
main = do
  cfg <- defaultSpockConfig () PCNoDatabase ()
  runSpock 8080 (spock _cfg _app)
