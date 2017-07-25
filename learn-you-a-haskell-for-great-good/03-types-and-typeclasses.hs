removeOdd :: [Int] -> [Int]
removeOdd arr = [ x | x <- arr, x `mod` 2 == 0]

compareAsInt :: String -> (Int -> Int -> Bool) -> String -> Bool
compareAsInt a op b = (read a :: Int) `op` (read b :: Int)

main = do
    print (removeOdd [1, 2, 3, 4])

    print ("5" > "45")                -- True
    print (compareAsInt "5" (>) "45") -- False
