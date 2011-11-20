
main = do cs <- getContents
          putStr $ expand cs

expand :: String -> String
expand cs = concat $ map expandTab cs

expandTab :: Char -> [Char]
expandTab c = if c == '\t' then "        " else [c]

