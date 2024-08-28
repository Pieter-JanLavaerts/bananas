ask :: String -> Int -> IO(Int)
ask var range = do
    putStrLn $ var ++ "? "
    putStr "> "
    resL <- getLine 
    let res = (read resL :: Int)
    if range /= 0 && res > range
        then do
            putStrLn $ "[1 - " ++ show range ++ "]"
            ask var range
        else return res

askEngine = ask "Engine" 1

askNPlayers = ask "Players" 0

startGame = putStrLn "Start!"

main :: IO()
main = do
    askEngine
    askNPlayers
    startGame
