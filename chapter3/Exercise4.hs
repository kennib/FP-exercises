import Prelude hiding (drop)

drop :: [a] -> Integer -> [a]
drop xs 0 = xs
drop [] n = []
drop xs n = drop (tail xs) (n - 1)


main :: IO ()
main = do
    print $ drop [1..100] 10
    print $ drop [1..30] 20
    print $ drop [1..30] 200
    print $ drop [1..100] 0
    print $ drop [] 10
