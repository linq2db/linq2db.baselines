-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT("t"."NullableIntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

