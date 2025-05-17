BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Str",
	CHAR_LENGTH("t"."Str")
FROM
	"TestLengthModel" "t"
FETCH NEXT 2 ROWS ONLY

