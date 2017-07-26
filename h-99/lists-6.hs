isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome = (==) <*> reverse

main = do
    print $ isPalindrome [1,2,3,2]
