import Prelude hiding (curry, uncurry)

curry :: ((a, b) -> c) -> (a -> (b -> c))
curry f = \a -> (\b -> f (a, b))

uncurry :: (a -> (b -> c)) -> ((a, b) -> c) 
uncurry f = \(a, b) -> f a b

main :: IO ()
main = do
    print $ first 1 2
    print $ first 200 45
    print $ first "hello" "world"

    print $ (uncurry first) (1, 2)
    print $ (uncurry first) (200, 45)
    print $ (uncurry first) ("hello", "world")

    where
        first = curry fst
        
