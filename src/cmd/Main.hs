import Data.List (genericTake)
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
                (first:count:_) = map readMaybe args :: [Maybe Integer]
            in
                case (first, count) of
                    (Just first, Just count) -> putStrLn $ show $ genericTake count $ getList first
                    _ -> putStrLn "[first] and [count] must be integer"
