{-# LANGUAGE DataKinds        #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE TypeOperators    #-}

module App.Repository.User.Adapter where

import           Control.Lens
import           Data.Extensible
import           PersistentUtil
    ( sqlKey2Int
    )

import qualified App.Repository.Model as M
import           Entity.Entity
    ( User (..)
    , UserId
    )

toEntityUserId :: M.UserId -> UserId
toEntityUserId = sqlKey2Int

toEntity :: M.User -> User
toEntity (M.User name email _) = #name @= name <: #email @= email <: emptyRecord
