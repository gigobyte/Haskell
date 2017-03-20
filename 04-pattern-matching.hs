sum' :: (Num  a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

len :: (Num a) => [a] -> a
len [] = 0
len (_:xs) = 1 + len xs

trd :: (a, b, c) -> c
trd (_, _, z) = z

main = do
    print (sum' [1,2,3])
    print (sum' [1.5, 2.5, 3.4])

    print (len [1,2,3,4])

    print (trd (1,2,3))
