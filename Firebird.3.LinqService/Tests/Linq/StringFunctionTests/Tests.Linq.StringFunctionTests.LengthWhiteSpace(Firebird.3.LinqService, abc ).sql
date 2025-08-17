BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t"."Str",
	CHAR_LENGTH("t"."Str")
FROM
	"TestLengthModel" "t"
FETCH NEXT 2 ROWS ONLY

