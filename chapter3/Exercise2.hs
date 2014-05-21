import Prelude hiding (tail)

tail :: [a] -> [a]
tail (x:xs) = xs
tail [x] = []
tail [] = []

main :: IO ()
main = do
    print $ tail [1..100]
    print $ tail [80..100]
    print $ tail [1]
    print $ tail ([] :: [Int])
