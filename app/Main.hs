module Main where

import           Lib
import           Network.Wai.Handler.Warp
    ( run
    )

import           App.Server
    ( app
    )

main :: IO ()
main = do
  let port = 8080
  print $ "Listening at " ++ show port ++ "..."
  run port app
