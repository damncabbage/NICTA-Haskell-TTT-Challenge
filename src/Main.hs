{-# LANGUAGE GADTs #-}

module Main where

main :: IO ()
main = putStrLn "Hi"

data PositionState = Occupied Player | NotTaken
  deriving(Show)

data Player = PlayerX | PlayerO
  deriving(Show) -- TODO: Custom Show

data Position = TL | TC | TR
              | ML | MC | MR
              | BL | BC | BR
  deriving(Show) -- TODO: Custom Show

data Finished
data Unfinished
data Board s = Board [(Position, Player)]
  deriving(Show) -- TODO: Custom Show



data MoveResult b where
  PositionOccupied   :: MoveResult b
  ActiveGame         :: MoveResult (Board Unfinished)
  FinishedGame       :: MoveResult (Board Finished)

-- move :: (Board Unfinished) -> MoveResult

playerAt :: (Board a) -> Position -> PositionState
playerAt (Board ps) TL = Occupied PlayerX
playerAt (Board ps) p  = NotTaken
