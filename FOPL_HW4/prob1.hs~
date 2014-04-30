import System.IO
import Data.List
import System.Environment (getArgs)

less :: String -> String -> Bool
less x y = if (length x) < (length y)
		   then True	
		   else False
moreOrEqual :: String -> String -> Bool
moreOrEqual x y = not (less x y)

main :: IO ()
main = do
	infile <- getArgs
      	inh <- openFile  (head infile) ReadMode
	outh <- openFile "sorted.txt" WriteMode
	contents <- hGetContents inh
	let list = unlines . quickSort $ lines contents
	hPutStr outh list
	hClose inh
	hClose outh
	return ()

quickSort :: [String] -> [String]
quickSort [] = []
quickSort (x:xs) = 
    let lesser = filter (\y -> less y x) xs 
        larger = filter (\y -> moreOrEqual y x) xs	
    in (quickSort lesser) ++ [x] ++ (quickSort larger)
