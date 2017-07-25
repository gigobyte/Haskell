myLast :: [a] -> a
myLast = head . reverse

main = do
    print $ myLast [1,2,3]
    -- 3
