import Tree

size :: Tree a -> Integer
size (Leaf x) = 1
size (Tree x y) = size x + size y
