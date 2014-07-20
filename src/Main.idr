module Main

import Pipes
import Pipes.Prelude

main : IO ()
-- main = runEffect $ stdinLn >-> take 3 >-> stdoutLn
-- main = runEffect $ for (each [1..1]) (lift . print)
main = putStrLn $ show $ the (List Int) $ toList $ each [1..5]
