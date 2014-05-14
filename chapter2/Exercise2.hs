isSorted :: [a] -> (a -> a -> Bool) -> Bool
isSorted (x:y:zs) f = f x y && isSorted (y:zs) f
isSorted [x] _ = True
isSorted [] _ = True

main :: IO ()
main = do
    print $ isSorted [1,2,3,4,5,6] (<)
    print $ isSorted [1,2,3,4,5,6] (>)
    print $ isSorted [6,5,4,3,2,1] (>)
