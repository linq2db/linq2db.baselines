-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	ROW_NUMBER() OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id"),
	SUM("t"."IntValue") OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

