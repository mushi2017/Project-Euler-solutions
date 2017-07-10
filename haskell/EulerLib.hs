{- 
 - Shared code for solutions to Project Euler problems
 - Copyright (c) Project Nayuki. All rights reserved.
 - 
 - https://www.nayuki.io/page/project-euler-solutions
 - https://github.com/nayuki/Project-Euler-solutions
 -}

module EulerLib
	(digitSum, sqrt)
	where

import Prelude hiding (sqrt)
import Data.Bits


digitSum :: Integral a => a -> a
digitSum 0 = 0
digitSum n = (mod n 10) + (digitSum (div n 10))


-- sqrt n = floor(sqrt(n)).
-- Implemented entirely in integer arithmetic; guaranteed no rounding error.
sqrt :: (Integral a, Data.Bits.Bits a) => a -> a
sqrt n = sqrtAlpha 1 where
	sqrtAlpha i
		| i * i > n = sqrtBeta (Data.Bits.shiftR i 1) 0
		| otherwise = sqrtAlpha (Data.Bits.shiftL i 1)
	sqrtBeta 0 acc = acc
	sqrtBeta i acc = sqrtBeta (div i 2) (if (i + acc)^2 <= n then i + acc else acc)
