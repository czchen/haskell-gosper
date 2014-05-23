module Gosper
( getList
) where

import Data.Bits

getNext :: Integer -> Integer
getNext x
    | x <= 0 = 0
    | otherwise =
        let
            y = x .&. (- x)
            c = x + y
        in
            (((x `xor` c) `shiftR` 2) `div` y) .|. c

getList :: Integer -> [Integer]
getList x
    | x <= 0 = []
    | otherwise = x: (getList $ getNext x)
