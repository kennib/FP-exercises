import Prelude hiding (map)
import Tree

map :: (a -> a) -> Tree a -> Tree a
map f (Leaf x) = Leaf $ f x
map f (Tree x y) = Tree (map f x) (map f y)
