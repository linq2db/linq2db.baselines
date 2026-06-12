-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	LEAD("t"."IntValue") OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

