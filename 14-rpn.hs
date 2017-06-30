operatorMap = [ ("+", (\xs -> case xs of x:y:ys -> (x+y):ys))
              , ("-", (\xs -> case xs of x:y:ys -> (y - x):ys))
              , ("*", (\xs -> case xs of x:y:ys -> (x * y):ys))
              ]

evalRPN :: String -> String
evalRPN = show . head . foldl consumeNextItem [] . words
          where consumeNextItem xs op = case (lookup op operatorMap) of
                                            Nothing -> read op:xs
                                            Just f -> f xs

main = interact evalRPN
