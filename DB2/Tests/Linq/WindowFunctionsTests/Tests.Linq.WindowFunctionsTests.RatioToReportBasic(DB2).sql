-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	RATIO_TO_REPORT("t"."IntValue") OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

