main = do
    print 5
    print (succ 8)
    print (min 1 10)

    let doubleMe x = x + x

    print (doubleMe 4)

    let odd? x = if x `mod` 2 == 0 then True else False

    print (odd? 4)
    print (odd? 3)
