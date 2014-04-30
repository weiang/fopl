data Tree a = Leaf a | Node (Tree a) (Tree a)

reduce :: (a -> a -> a) -> Tree a -> a
reduce oper (Leaf x) = x
reduce oper (Node x y) = oper (reduce oper x) (reduce oper y)

 
