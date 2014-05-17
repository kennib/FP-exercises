compose :: (b -> c) -> (a -> b) -> (a -> c)
compose f g = \a -> f (g a)

main :: IO ()
main = do
    print $ (double `compose` head) [1..100]
    print $ (double `compose` head) [40..45]

    where
        double = \x -> x * 2 
