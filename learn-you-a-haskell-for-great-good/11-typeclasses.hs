module Main where

class JSType a where
    booleanify :: a -> Bool

instance JSType Int where
    booleanify 0 = False
    booleanify _ = True

instance JSType [a] where
    booleanify [] = False
    booleanify _ = True

instance JSType Bool where
    booleanify = id

instance JSType (Maybe a) where
    booleanify (Just _) = True
    booleanify Nothing = False

main :: IO()
main = do
    print $ booleanify "test"
    print $ booleanify ""
