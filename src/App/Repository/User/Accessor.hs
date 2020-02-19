{-# LANGUAGE GADTs #-}

module App.Repository.User.Accessor where

import           Control.Monad.IO.Unlift
    ( MonadUnliftIO
    )
import           Database.Persist
import           Database.Persist.Sql
import           PersistentUtil
    ( entity2Tuple
    )

import qualified App.Repository.Model        as M
import           App.Repository.Types
    ( ConnPool
    )
import           App.Repository.User.Adapter
    ( toEntity
    )
import           Entity.Entity
    ( UserRecord
    )

getList :: MonadUnliftIO m => ConnPool -> m [UserRecord]
getList pool =
  map (convert . entity2Tuple) <$> runSqlPool (selectList [] []) pool
  where
    convert (a, b) = (a, toEntity b)
