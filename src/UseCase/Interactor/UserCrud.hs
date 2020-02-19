module UseCase.Interactor.UserCrud where

import           Control.Monad.IO.Unlift
    ( MonadUnliftIO
    )

import           App.Repository.Types
    ( ConnPool
    )
import qualified App.Repository.User.Accessor as R
import           Entity.Entity
    ( UserRecord
    )

getList :: MonadUnliftIO m => ConnPool -> m [UserRecord]
getList = R.getList
