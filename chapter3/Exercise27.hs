import Tree

depth :: Tree a -> Integer
depth (Leaf a) = 1
depth (Tree x y) = max (depth x) (depth y) + 1
