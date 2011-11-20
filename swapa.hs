
main = do cs <- getContents
          putStr $ swapA cs

swapA :: String -> String
swapA cs = myMap _swapA cs

_swapA :: Char -> Char
_swapA 'a' = 'A'
_swapA 'A' = 'a'
_swapA c = c

myMap :: (a -> b) -> [a] -> [b]
myMap f [] = []
myMap f (x:xs) = f x : map f xs

