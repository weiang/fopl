evens :: [Int]
evens = [x * 2| x <- [1..]]
odds :: [Int]
odds = [ x * 2 - 1 | x <- [1..]]

mergeAux [] [] l = l
mergeAux x [] l = l ++ x
mergeAux [] x l = l ++ x
mergeAux x1@(h1:t1) x2@(h2:t2) h3 = if h1 < h2 then mergeAux t1 x2 (h3 ++ [h1]) else mergeAux x1 t2 (h3 ++ [h2])

merge :: [Int] -> [Int] -> [Int]
merge l1 l2 = mergeAux l1 l2 []
