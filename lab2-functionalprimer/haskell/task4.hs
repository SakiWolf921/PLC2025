ask :: String -> IO ()
ask prompt =
    do
    putStrLn prompt
    line <- getLine
    if line /= ""
        then do 
            if line == "quit"
                then putStrLn("quitting...")

            else putStrLn ("you said: " ++ reverse line)

    else 
        do 
            let p = prompt ++ "!" 
            let prompt = p
            ask prompt


main :: IO ()
main =
    do
    let prompt = "please say something"
    ask prompt