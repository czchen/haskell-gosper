import Data.List.Split
import System.Environment
import Text.Read

import Gosper

main = do
    args <- getArgs
    if length args /= 2
        then
            putStrLn "program [first] [count]"
        else
            let
                first = readMaybe (args !! 0) :: Maybe Integer
                count = readMaybe (args !! 1) :: Maybe Int
            in
                case (first, count) of
                    (Just first, Just count) -> putStrLn $ show $ take count $ getList first
                    _ -> putStrLn "[first] and [count] must be integer"
