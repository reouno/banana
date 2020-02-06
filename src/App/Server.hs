{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE OverloadedStrings #-}

module App.Server where

import           Control.Monad.IO.Class
    ( liftIO
    )
import           Data.Text
import           Servant

type Api = Get '[ JSON] Text

api :: Proxy Api
api = Proxy

server :: Server Api
server = constantApiHandler

constantApiHandler :: Server Api
constantApiHandler = liftIO $ return "I'm Banana."

app :: Application
app = serve api server
