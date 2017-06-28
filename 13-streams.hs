import System.IO
import System.Directory
import Control.Monad

main = do
    fileExists <- doesFileExist "example.txt"

    when fileExists $ do
        -- handling open and closing
        handle <- openFile "example.txt" ReadMode
        contents <- hGetContents handle
        putStr contents
        hClose handle

        putStrLn "-------------"

        -- using a context manager
        withFile "example.txt" ReadMode (\handle -> do
            contents <- hGetContents handle
            putStr contents)
