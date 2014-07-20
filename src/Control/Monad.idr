
module Control.Monad

-- | @'replicateM' n act@ performs the action @n@ times,
-- gathering the results.
replicateM        : (Monad m) => Nat -> m a -> m (List a)
replicateM n x    = sequence (replicate n x)

-- | Like 'replicateM', but discards the result.
replicateM_       : (Monad m) => Nat -> m a -> m ()
replicateM_ n x   = sequence_ $ the (List _) (replicate n x)
-- todo:
-- * Should I need to annotate (replicate n x) above if sequence is just used next?

-- | Promote a function to a monad.
liftM   : (Monad m) => (a1 -> r) -> m a1 -> m r
liftM f m1              = do { x1 <- m1; return (f x1) }
