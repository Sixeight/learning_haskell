
import List

main = do cs <- getContents
          putStr $ _sort cs

_sort :: String -> String
_sort cs = unlines $ sort $ lines cs

