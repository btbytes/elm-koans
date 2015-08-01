module AboutComparisonOperators where

import ElmTest.Assertion exposing (..)
import ElmTest.Test exposing (suite, test)
import TestHelpers exposing (..)


testSuite =
  let
    xNum = 1
    xZero = 0
    xTwo = 2
    xString = "A string"
    xChar = 'a'
    xMax = 2
    xMin = 1
  in
  suite
    "About Comparison Operators"
    [ test "== tests for equality"
        (assert (1 == xNum))
    , test "/= tests for inequality"
        (assert (1 /= 2))
    , test "< tests for less than"
        (assert (1 < xTwo))
    , test "<= tests for less than or equal to"
        (assert (1 <= xTwo))
    , test "> tests for greater than"
        (assert (xTwo > 1))
    , test ">= tests for greater than or equal to"
        (assert (xNum >= 1))
    , test "Floats are comparable"
        (assert (xTwo >= 1.5))
    , test "Strings are comparable"
        (assert ("A string" == xString))
    , test "Chars are comparable"
        (assert ('a' == xChar))
    , test "max returns the maximum of two comparables"
        (assertEqual xMax (max 1 2))
    , test "min returns the minimum of two comparables"
        (assertEqual xMin (min 1 2))
    , test "compare returns an Order"
        (assertEqual EQ (compare 2 2))
    , test "functions can be made infix with ``"
        (assertEqual EQ (2 `compare` 2))
    ]
