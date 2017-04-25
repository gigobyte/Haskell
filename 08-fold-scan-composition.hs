-- boring, a la javascript reduce
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\sum x -> sum + x) 0 xs

-- haskell hell yeah
sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

-- even shorter oneliner
sum''' :: (Num a) => [a] -> a
sum''' = foldl1 (+)

elem' :: (Eq a) => a -> [a] -> Bool
elem' y = foldl (\acc x -> if x == y then True else acc) False

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

rootSqrtSum :: Int -> Int
rootSqrtSum a = sum (takeWhile (< fromIntegral a) (scanl1 (+) (map sqrt [1..]))) + 1

oddSquareSum  :: Int -> Int
oddSquareSum a = sum . takeWhile (< fromIntegral a) . filter odd . map (^2) $ [1..]

main :: IO()
main = do
	print (sum' [1,23,5,5])
	print (sum'' [1,23,5,5])

	print (elem' 4 [1,4,2])
