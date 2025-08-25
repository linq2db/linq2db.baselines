BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t"."Str",
	CHAR_LENGTH("t"."Str")
FROM
	"TestLengthModel" "t"
FETCH NEXT 2 ROWS ONLY

