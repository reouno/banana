{-# LANGUAGE DataKinds        #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE TypeOperators    #-}

module Entity.Internal.User where

import           Control.Lens
import           Data.Extensible
import           Data.Text

import           Entity.Internal.Entity
    ( Entity (..)
    , EntityValue (..)
    )

type UserId = Int

type User = Record '[ "name" >: Text, "email" >: Email]

instance EntityValue User
