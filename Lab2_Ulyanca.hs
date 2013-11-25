import Data.List
import Lab2

sortT (a) (b)
	| (Lab2.iq a) < (Lab2.iq b) = GT
	| (Lab2.iq a) > (Lab2.iq b) = LT
	| (Lab2.iq a) == (Lab2.iq b) = EQ

main = do
putStrLn "Список студентов, отсортированных по iq:"
mapM_ putStrLn $ map (\st -> show (Lab2.iq st) ++ " " ++ name st ++ " " ++ surname st ++ " ") $ sortBy sortT students


