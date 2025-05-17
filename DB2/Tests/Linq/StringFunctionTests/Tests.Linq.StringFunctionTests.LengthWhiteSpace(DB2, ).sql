BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Str",
	CHAR_LENGTH("t"."Str")
FROM
	"TestLengthModel" "t"
FETCH NEXT 2 ROWS ONLY

