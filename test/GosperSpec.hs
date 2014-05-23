module GosperSpec where

import Test.Hspec

import Gosper

spec :: Spec
spec = do
    describe "getList" $ do
        it "normal" $ do
            (take 10 $ getList 1) `shouldBe` [1,2,4,8,16,32,64,128,256,512]

        it "error" $ do
            getList 0 `shouldBe` []

main :: IO()
main = do
    hspec spec
