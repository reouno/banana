{-# LANGUAGE DataKinds        #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE TypeOperators    #-}

module Entity.Internal.Expression where

import           Control.Lens
import           Data.Extensible
import           Data.Text
import           Data.Time
    ( UTCTime
    )

import           Entity.Internal.User
    ( UserId
    )

type ExpressionId = Int

type Expression
   = Record '[ "content" >: Text, "createdAt" >: UTCTime, "updatedAt" >: UTCTime, "userId" >: UserId]
