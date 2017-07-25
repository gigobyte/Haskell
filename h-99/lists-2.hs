myButLast :: [a] -> a
myButLast = head . tail . reverse

main = do
    print $ myButLast [1,2,3,11]
    -- 3
