import System.Environment

main = do
  n <- getArgs >>= (return.read.(!!0))
  putStr "(TOP "
  sequence $ replicate n $ putStr "(A " 
  sequence $ replicate (n+1) $ putStr ")"
  putStrLn ""
