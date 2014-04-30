module Main where
import Random

-- To make an executable called "Guesser"
-- >ghc --make Guesser.hs
-- Note that the function
--     getRandom :: (Int, Int) -> IO Int  
-- is defined in the module Random

-- Other useful functions:
--   putStrLn :: String -> IO ()       -- Print string to output
--   getLine :: IO String              -- Reads a line of input
--   read :: Read t => String -> t     -- Parse any type t belonging to Read class to a value of type t


untilIO :: IO Bool -> IO ()
-- TODO: Implement untilIO
untilIO x = do 
	result <- x
	if result == True
		then return ()
	else 
		untilIO(x)

doGuess :: Int -> IO Bool
-- TODO: Implement doGuess
doGuess secret = do
    guess <- getLine
    let x = read guess
    case compare x secret of 
      LT -> putStrLn "Too low!" >> return False 
      EQ -> putStrLn "Congratulations!" >> return True
      GT -> putStrLn "Too high!" >> return False

main :: IO ()
main = do
 {  secret <- getRandom(1,10)
 ;  putStrLn "I'm thinking of a number between 1 and 10.  Can you guess it?"
 ;  untilIO (doGuess secret)
 }
