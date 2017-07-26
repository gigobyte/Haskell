myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs

main = do
    print $ myLength [234,23,2,2,2]
