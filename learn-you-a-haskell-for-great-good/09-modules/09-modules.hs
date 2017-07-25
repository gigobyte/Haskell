import Data.List
import Data.Function
import Data.Char
import qualified Data.Map as Map
import Geometry

main = do
    print $ sortBy (compare `on` length) [[1,2,3], [1], [1,2]]
    print $ filter (not . any isSpace) $ groupBy ((==) `on` isSpace) "this will result in a 8 item array"
    print $ sphereVolume 5
