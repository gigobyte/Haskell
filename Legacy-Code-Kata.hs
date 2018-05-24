{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns        #-}

data ValidationError
   = PasswordsDontMatch
   | PasswordHasInvalidLength

instance Show ValidationError where
  show PasswordsDontMatch = "The passwords don't match"
  show PasswordHasInvalidLength = "Password must be at least 8 characters in length"

data UserInput = UserInput
  { username        :: String
  , fullName        :: String
  , password        :: String
  , confirmPassword :: String
  }

data User = User
  { username :: String
  , fullName :: String
  , password :: String
  }

createUser :: (String -> String) -> UserInput -> Either ValidationError User
createUser encrypt UserInput { username, fullName, password, confirmPassword }
  | password /= confirmPassword = Left PasswordsDontMatch
  | length password < 8 = Left PasswordHasInvalidLength
  | otherwise = Right $ User username fullName (encrypt password)

secureEncrypt :: String -> String
secureEncrypt =
  reverse

getCreateUserMessage :: Either ValidationError User -> String
getCreateUserMessage result =
  case result of
    Left err ->
      show err
    Right User { username, fullName, password } ->
      "Saving Details for User (" ++ username ++ ", " ++ fullName ++ ", " ++ password ++ ")"

getUserInput :: IO UserInput
getUserInput = do
  putStrLn "Enter a username"
  username <- getLine
  putStrLn "Enter your full name"
  fullName <- getLine
  putStrLn "Enter your password"
  password <- getLine
  putStrLn "Re-enter your password"
  confirmPassword <- getLine

  return $ UserInput username fullName password confirmPassword

main :: IO()
main =
  getUserInput >>= (putStrLn . getCreateUserMessage . createUser secureEncrypt)
