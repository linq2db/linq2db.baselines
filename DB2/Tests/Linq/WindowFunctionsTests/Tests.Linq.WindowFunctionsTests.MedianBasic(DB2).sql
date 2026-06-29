-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	MEDIAN("t"."IntValue") OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

