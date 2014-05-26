import Prelude hiding (maximum)
import Tree

maximum :: Ord a => Tree a -> a
maximum (Leaf a) = a
maximum (Tree x y) = max (maximum x) (maximum y)
