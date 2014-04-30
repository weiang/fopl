data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

maptree f (Leaf x) = Leaf (f x)
maptree f (Node x y) =  Node (maptree f x) (maptree f y)

-- maptree (\x -> x + 1)  Node (Node (Leaf 1) (Leaf 2)) (Leaf 3)

