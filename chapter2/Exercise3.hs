partial :: a -> (a -> b -> c) -> (b -> c)
partial a f = f a

main :: IO ()
main = do
    print $ firstten [1..20]
    print $ firstten [20..100]

    where
        firstten = (partial 10 take)
