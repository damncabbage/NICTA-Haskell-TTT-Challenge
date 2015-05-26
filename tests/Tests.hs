module Main where

import           Test.Hspec
-- import           Test.Hspec.QuickCheck     (prop)
-- import           Test.QuickCheck

main :: IO ()
main = hspec $ do
  it "hello world" $ do
    True `shouldBe` True
