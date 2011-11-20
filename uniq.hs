
import List

main = do cs <- getContents
          putStr $ uniq cs

uniq :: String -> String
uniq cs = unlines $ map head $ group $ lines cs

