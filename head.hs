
main = do cs <- getContents
          putStr $ firstNlines 10 cs

firstNlines n cs = unlines $ take n $ lines cs
