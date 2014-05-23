module GosperSpec where

import Test.Hspec

-- import Gosper

spec :: Spec
spec = do
    describe "test" $ do
        it "test" $ do
            0 `shouldBe` 0

main :: IO()
main = do
    hspec spec
