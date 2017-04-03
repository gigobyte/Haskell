maximum' :: (Ord a) => [a] -> a
maximum' [x] = x
maximum' (x: xs) =
    let maxTail = maximum' xs
    in if x > maxTail then
        x
    else
        maxTail

sum' :: (Num a) => [a] -> a
sum' [] = undefined
sum' [x] = x
sum' (x: xs) = x + sum xs

-- Fuck this, cant be bothered to find the error
-- timesDivisibleBy :: (Integral a) => a -> Int -> Int
-- timesDivisibleBy x y =
--     let timesDivisibleBy' x y times
--             | decimal = times - 1
--             | not decimal = timesDivisibleBy' x/y y times + 1
--             where decimal = fromInteger (round x) == x
--     in timesDivisibleBy' x y 0

-- above but not tail-call optimized
-- timesDivisibleBy x y
--     | decimal = 0
--     | not decimal = 1 + (timesDivisibleBy (x/y) y)
--     where decimal = fromInteger (round x) == x

main :: IO()
main = do
    print (maximum' [1,4])
    print (sum' [])
