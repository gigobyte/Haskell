module Main where

sayHello :: String -> IO()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

main :: IO()
main = sayHello "Test"
