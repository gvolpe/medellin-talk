{-# LANGUAGE ScopedTypeVariables #-}

module THDD where

-- val foo: List[List[Int]] -> List[Int]
foo :: [[Int]] -> [Int]
foo = mconcat

-- val bar: Int -> Int -> List[Int]
medellin :: Int -> Int -> [Int]
medellin = replicate

-- def fzip[F[_]: Applicative, A, B](fa: F[A], fb: F[B]): F[(A, B)]
fzip :: Applicative f => (a -> b) -> f a -> f b -> f (a, b)
fzip = undefined

-- def funzip[F[_]: Applicative, A, B](fab: F[(A, B)]): (F[A], F[B])
funzip :: Applicative f => f (a, b) -> (f a, f b)
funzip fab = (fmap fst fab, fmap snd fab)

taz :: Maybe Int -> Maybe Bool -> Maybe (Int, Bool)
taz = undefined

-- def headOr[A](a: A, as: List[A]): A
headOr' :: a -> [a] -> a
headOr' x [] = x
headOr' _ (x:_) = x

--tap :: forall m a b . Monad m => m a -> (a -> m b) -> m a
--tap ma f = ma >>= f >> ma

--foo :: Applicative m => m a -> m b -> m (a, b)
--foo ma mb = (,) <$> ma <*> mb

--bar :: Monad m => m a -> m b -> m (a, b)
--bar ma mb = ma >>= \a -> mb >>= \b -> return (a, b)

--foo :: String -> Maybe Int
--foo = _hole

--traverze :: (Traversable t, Applicative f) => (a -> f b) -> t a -> f (t b)
--traverze f ta = sequenceA $ fmap f ta
