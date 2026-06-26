-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	VAR_POP("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

