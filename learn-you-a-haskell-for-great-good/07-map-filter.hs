applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

mergeWith :: (a -> a -> a) -> [a] -> [a] -> [a]
mergeWith _ allx@(_:_) [] = allx
mergeWith _ [] allx@(_:_) = allx
mergeWith _ [] [] = []
mergeWith f (x:xs) (y:ys) = f x y : mergeWith f xs ys

pickLarger :: (Ord a) => a -> a -> a
pickLarger x y = if x > y then x else y

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' predicate (x:xs)
    | predicate x = x : filter' predicate xs
    | otherwise = filter' predicate xs

collatzSequence :: (Integral a) => a -> [a]
collatzSequence x
    | x == 1 = [1]
    | odd x = x : collatzSequence (x * 3 + 1)
    | even x = x : collatzSequence (x `div` 2)

main :: IO()
main = do
    let divideBy10 = (/ 10)
    print (divideBy10 4)

    print (applyTwice divideBy10 4)

    print (mergeWith pickLarger [1,10,2] [2, 9, 3])
    print (mergeWith pickLarger [1,10,2] [])

    print (filter' (>3) [1,2,45,6,8,89,9])
    --same as below but way prettier
    print ([ x | x <- [1,2,45,6,8,89,9], x > 3])

    print (collatzSequence 13)
    -- for all starting numbers between 1 and 100, how many chains have a length greater than 15?
    print (length (filter (>15) (map length (map collatzSequence [1..100]))))

    -- ok, I learned how lambdas are created in Haskell, lets improve the expression above
    print (length (filter (\xs -> length xs >15) (map collatzSequence [1..100])))
