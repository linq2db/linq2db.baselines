BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
	"t"."Str",
	CHAR_LENGTH("t"."Str")
FROM
	"TestLengthModel" "t"

