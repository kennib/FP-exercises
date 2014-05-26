module Tree where

data Tree a = Tree (Tree a) (Tree a) | Leaf a deriving (Show)

smallTree = Tree (Leaf 1) (Leaf 2)
largeTree = Tree smallTree smallTree
