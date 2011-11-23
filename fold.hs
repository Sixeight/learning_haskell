
width = 60

main = do cs <- getContents
          putStr $ fold cs

fold :: String -> String
fold cs = unlines $ fold' $ lines cs
  where
    fold' :: [String] -> [String]
    fold' xs = concatMap listize $ splitLine xs

    splitLine :: [String] -> [(String, String)]
    splitLine xs = map (splitAt width) xs

    listize :: (String, String) -> [String]
    listize (xs, ys) = [xs, ys]

