quicksort :: (Num a, Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort pre ++ [x] ++ quicksort after
    where
      pre = [a | a <- xs, a <= x]
      after = [a | a <- xs, a > x]

main :: IO()
main = print $ quicksort [3, 4, 6, 8, 1, 2, 2, 9, 7]
