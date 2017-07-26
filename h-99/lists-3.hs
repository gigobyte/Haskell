elementAt :: [a] -> Int -> Maybe a
elementAt xs i
    | null xs = Nothing
    | i == 1 = Just $ head xs
    | otherwise = elementAt (tail xs) (i - 1)

main = do
    print $ elementAt [1,2,3,11] 5
    -- 3
