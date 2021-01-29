main :: IO()
main = do
    print"Who is the email for?"
    recipient <- getLine
    print "What is the title?"
    title <- getLine
    print "Who is the Author?"
    author <- getLine
    print( "Dear" ++ recipient ++ ".\n" ++ "thanks for buying" ++ title ++ "\nthanls,\n" ++ author)

toPart recipient = "Dear" ++ recipient ++ ",\n"