module Chap05

printLength : IO ()
printLength = getLine >>= \line => let len = length line in
                                   putStrLn $ show len

-- 5.1.4 Exercises
-- Using do notation, write a program which reads two strings then displays the length of the longer string
lenghtOfLonger : IO ()
lenghtOfLonger = do
                    line1 <- getLine
                    line2 <- getLine
                    let l1 = length line1
                    let l2 = length line2
                    putStrLn $ show $ if l1 > l2 then l1 else l2

-- Write the same program using >>= instead of do notation
lenghtOfLonger' : IO ()
lenghtOfLonger' = getLine >>=
                    \line1 => let l1 = length line1 in
                              getLine >>=
                                \line2 => let l2 = length line2 in
                                          putStrLn $ show $ if l1 > l2 then l1 else l2

-- *chap05> :exec lenghtOfLonger'
-- long
-- longer
-- 6

-- *chap05> :exec lenghtOfLonger
-- short
-- longer
-- 6

--  ~/W/i/starting git:master λ →  ~/idris-install/.cabal-sandbox/bin/idris chap05.idr                                                                                    ⬆ ✖ ◼
--       ____    __     _
--      /  _/___/ /____(_)____
--      / // __  / ___/ / ___/     Version 0.12
--    _/ // /_/ / /  / (__  )      http://www.idris-lang.org/
--   /___/\__,_/_/  /_/____/       Type :? for help
 --
--  Idris is free software with ABSOLUTELY NO WARRANTY.
--  For details type :warranty.
--  Type checking ./chap05.idr
--  *chap05> :exec printLength
--  haha
--  4
--  *chap05> :q
--  Bye bye
