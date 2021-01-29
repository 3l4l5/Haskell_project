calcChange owed given = if change > 0
    then change
    else 0
    where
        change = given - owed

doublePlusTwo x = doubleX + 2
    where doubleX = x * 2

inc n = n + 1
    
double x = x * 2

square x = x * x

testFunc x = if mod x 2 == 0
    then x - 2
    else 3 * x + 1

body sumSquare squareSum = if sumSquare > squareSum
    then sumSquare
    else squareSum

sumSquareORsquareSum x y = (\sumSquare squareSum ->
    if sumSquare > sumSquare
    then sumSquare
    else squareSum)(x^2 + y^2) ((x + y)^2)




ifEvenInc n = if even n
    then n + 1
    else n
    

ifEvenDouble n = if even n
    then n * 2
    else n

ifEvenSquare n = if even n
    then n * n
    else n

ifEven myFunction n = if even n
    then myFunction n
    else n

compareLastNames name1 name2 = if lastName1 > lastName2
    then GT
    else if lastName1 < lastName2
        then LT 
        else if firstName1 > firstName2
            then GT
            else if firstName1 < firstName2
                then LT 
                else EQ
    where
        lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2

getRequestUrl host apikey resource id =
    host ++
    "/" ++
    resource ++
    "/" ++
    id ++
    "?token="++
    apikey


getHostRequestBuilder host = (\apikey resource id -> getRequestUrl host  apikey resource id)

exampleUrlBuilder = getHostRequestBuilder "http://example.com"

genApiRequestBuilder hostBuilder apikey =
    (\resource id -> hostBuilder apikey resource)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337asdfasf"