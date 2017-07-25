import Data.Char
import Control.Monad

myMethod :: String -> String
myMethod = unwords . map (map toUpper . takeWhile (\x -> x /= 'b')) . words

main = do
    input <- getLine
    putStrLn $ myMethod input

    forever $ do
        input <- getLine
        putStrLn $ map toUpper input
