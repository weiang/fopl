module Random where

import System.Random

getRandom :: (Int,Int) -> IO Int
--getRandom (low,high) = return 3
getRandom (low,high) = do 
  { r <- randomIO
  ; return ((r `mod` (1 + high-low) + low))
  }