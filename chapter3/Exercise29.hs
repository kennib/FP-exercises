import Prelude hiding (fold, maximum, map)
import Tree

fold :: (b -> b -> b) -> (a -> b) -> Tree a -> b
fold _ f (Leaf x) = f x
fold f g (Tree x y) = f (fold f g x) (fold f g y)

size :: Tree a -> Integer
size = fold (+) (\x -> 1)

maximum :: Tree Integer -> Integer
maximum = fold max id

depth :: Tree a -> Integer
depth = fold (\x y -> max x y + 1) (\x -> 1)

map :: (a -> b) -> Tree a -> Tree b
map f = fold Tree (Leaf . f)
