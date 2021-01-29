-- 課題１

func f g n = if even n
    then f n
    else g n

-- 課題２
sumAll n = if n == 0
    then 0
    else sumAll (n-1) + n

-- 課題３
-- Exercize1
underTn :: Integral a => a -> [a] -> [a]
underTn n l = if 10 >= n
    then [n] ++ l
    else underTn (div n 10) ([mod n 10] ++ l)

toDigits n = underTn n []

toDigitsRev n = reverse (toDigits n)

-- Exercize2
take2AndDoubleHead headlist taillist =
    if null taillist
    then reverse (headlist)
    else 
        if length taillist == 1
        then
            take2AndDoubleHead (headlist ++ map (*2) taillist) []
        --　headlistにtaillistの下位二つを取り出し、２番目の数字を２倍しheadlistに足したもの　taillistに手前二つの数字を取り除いたものを入れる
        else
            take2AndDoubleHead (headlist ++ reverse ([(head (reverse (take 2 (reverse taillist))))*2] ++ [last (reverse (take 2 (reverse taillist)))])) (reverse (tail (tail (reverse taillist))))
            -- これは可読性低すぎました。反省してます。
        
doubleEveryOther list = take2AndDoubleHead [] list

-- Exercize3
convert2oneDigit list1 list2=
    if null list2
    then list1
    else
        if head list2 < 10
        then 
            convert2oneDigit (list1 ++ [head list2]) (tail list2)
        else
            convert2oneDigit (list1 ++ toDigits (head list2)) (tail list2)

sumDigits list = sum (convert2oneDigit [] list)
--キリが悪いのでExercize4も
validate num = (mod (sumDigits (doubleEveryOther (toDigits num))) 10) == 0