-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	LAST_VALUE("t"."IntValue", 'IGNORE NULLS') OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

