-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	LAG("t"."IntValue", 2, 0) OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

