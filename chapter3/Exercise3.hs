setHead :: [a] -> a -> [a]
setHead (x:xs) y = y:xs
setHead ([]) y = [y]

main :: IO ()
main = do
    print $ setHead [1..100] 200
    print $ setHead [50..60] 800
    print $ setHead [] 100
