-- replicate that throws when count is negative
strictReplicate :: Int -> b -> [b]
strictReplicate count el
    | count < 0 = error "Negative value of the count argument is not allowed"
    | otherwise = replicate count el

-- I could use Foldable here which apparently is a type that implements reduce
-- but I have to type some extra stuff which I dont undestand
-- lenTell :: (Foldable t) => t a -> String
-- so I left it as it is
lenTell :: [a] -> String
lenTell collection
    | len <= 2 = "Very short"
    | len <= 10 = "Kinda short"
    | len > 10 = "We big data now!"
    where len = length collection

lenLetsTell :: [a] -> String
lenLetsTell collection =
    let len = length collection
    in (if len <= 2 then
            "Very short"
        else if len <= 10 then
            "Kinda short"
        else
            "We big data now!")

main :: IO()
main = do
    print (strictReplicate 10 "ouch")

    print (lenTell (strictReplicate 11 1))
    print (lenLetsTell (strictReplicate 11 1))
