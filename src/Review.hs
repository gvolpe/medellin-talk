module Review where

-- Functions
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

isOdd :: Int -> Bool
isOdd = not . isEven

andThen = flip (.)

-- Records (define Person)
data Person = Person {
   personName :: String
 , personAge :: Int
 } deriving (Eq, Ord, Show)

-- ADTs (define Animal)
data Animal = Cat | Dog deriving Show

-- Pattern Matching
bar :: Animal -> String
bar Dog = "Perro"
bar Cat = "Gato"
--foo a = case a of
--  Cat -> "Gato"
--  Dog -> "Perro"

-- Recursion (length of list)
-- val len: List[Int] -> Int
len :: [Int] -> Int
len [] = 0
len (_:xs) = 1 + len xs

-- Polymorphism (len a)
-- def len[A](list: List[A]): Int
len' :: [a] -> Int
len' [] = 0
len' (_:xs) = 1 + len' xs

-- Higher kinded polymorphism (Functor constraint)
-- def foo[F[_]: Functor, A, B](f: A => B)(fa: F[A]): F[B]
foo :: Functor f => (a -> b) -> f a -> f b
foo = fmap

-- Typeclasses (define Functor and Option instance)
data Option a = Some a | None deriving Show

instance Functor Option where
  fmap f (Some x) = Some (f x)
  fmap _ None     = None
