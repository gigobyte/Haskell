data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Show, Eq)

data Gosho = Pesho String | Misho deriving (Show, Eq)

data Vector a = Vector a a a deriving (Show, Eq)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

(+++) :: (Num t) => Vector t -> Vector t -> Vector t
(+++) (Vector i j k) (Vector l m n) = Vector (i+l) (j+m) (k+n)

main :: IO()
main = do
    let mycircle = Circle 10 20 10

    print $ surface mycircle
    print mycircle

    print $ firstName $ Person {firstName="John", lastName="Doe", age=22}

    print $ map Pesho ["G", "P", "A"]

    print $ Vector 1 2 3 +++ Vector 3 2 1 +++ Vector 10 10 10
