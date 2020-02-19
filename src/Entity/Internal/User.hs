{-# LANGUAGE DataKinds        #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE TypeOperators    #-}

module Entity.Internal.User where

import           Control.Lens
import           Data.Extensible
import           Data.Text

type UserId = Int

type Email = Text

type User = Record '[ "name" >: Text, "email" >: Email]

type UserRecord = (UserId, User)
