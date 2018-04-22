import           Data.Char  (isLetter)
import           Data.Maybe (maybe)
import           Text.Read  (readMaybe)

data RawUser = RawUser String deriving (Show, Eq)

data FirstName = FirstName String deriving (Show, Eq)
data LastName = LastName String deriving (Show, Eq)
data PostalCode = PostalCode Int deriving (Show, Eq)

data User = User FirstName LastName PostalCode deriving (Show, Eq)

rawData :: [RawUser]
rawData =
    [ RawUser "Stanislav Iliev 1000"
    , RawUser "- Iliev 1000"
    , RawUser "Stanislav - 1000"
    , RawUser "Stanislav Iliev -"
    , RawUser "Stanislav Iliev"
    , RawUser "Stanislav"
    , RawUser ""
    ]

data ParseError
    = InvalidFirstName
    | InvalidLastName
    | InvalidPostalCode
    | NotEnoughInfo
    deriving (Show, Eq)

makeFirstName :: String -> Either ParseError FirstName
makeFirstName source
    | all isLetter source = Right $ FirstName source
    | otherwise = Left InvalidFirstName

makeLastName :: String -> Either ParseError LastName
makeLastName source
    | all isLetter source = Right $ LastName source
    | otherwise = Left InvalidLastName

makePostalCode :: String -> Either ParseError PostalCode
makePostalCode =
    maybe (Left InvalidPostalCode) (Right . PostalCode) . readMaybe

makeUser :: RawUser -> Either ParseError User
makeUser (RawUser info) =
    case (words info) of
        (rawFirstName : rawLastName : rawPostalCode : _) ->
            User <$> (makeFirstName rawFirstName)
                 <*> (makeLastName rawLastName)
                 <*> (makePostalCode rawPostalCode)
        _ ->
            Left NotEnoughInfo

main :: IO()
main = do
    print $ makeUser <$> rawData
