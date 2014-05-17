x = case [1,2,3,4,5] of
    x:2:4:_ -> x
    [] -> 42
    x:y:3:4:_ -> x+y
    h:t -> h + sum t
    _ -> 101

main :: IO ()
main = do
    print x
