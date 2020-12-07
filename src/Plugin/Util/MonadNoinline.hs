module Plugin.Util.MonadNoinline where

{-# INLINE[0] bind #-}
bind :: Monad m => m a -> (a -> m b) -> m b
bind = (>>=)

{-# INLINE[0] rtrn #-}
rtrn :: Monad m => a -> m a
rtrn = return

{-# INLINE[0] fmp #-}
fmp :: Functor f => (a -> b) -> f a -> f b
fmp = fmap
