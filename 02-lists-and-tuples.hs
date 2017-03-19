main = do
	let nums = [1, 2, 3, 4]

	print (nums ++ [5, 6])
	print (0 : nums)

	print (nums !! 0)

	-- list stdlib
	print (head nums)
	print (tail nums)

	if not (null nums) then
		print (reverse nums)
	else
		print (nums)

	let tenfives = replicate 10 5
	let tenfiveslazy = take 10 (repeat 5)

	print tenfives
	print tenfiveslazy

	let numsincremented = [ x+1 | x <- nums ]

	print numsincremented

	let evennums = [ x | x <- nums, x `mod` 2 == 0 ]

	print evennums

	-- tuples
	print (fst ("Wow", "Amazing"))

	let points = [(1, 2), (1, 5), (1.5, 5.5), (0, 0.1)]

	-- sum of all x coordinates
	print (sum [fst x | x <- points] )
	-- product of all y coordinates
	print (product [snd x | x <- points] )
