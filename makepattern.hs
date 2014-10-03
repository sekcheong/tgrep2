import System.Environment

main = do
  n <- getArgs >>= (return.read.(!!0))
  putStr "A >= A"
  sequence $ replicate n $ putStr " >= A" 
  putStrLn " > B"
