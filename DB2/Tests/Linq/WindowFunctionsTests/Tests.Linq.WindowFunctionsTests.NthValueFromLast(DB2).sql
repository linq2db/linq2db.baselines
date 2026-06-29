-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	NTH_VALUE("t"."IntValue", 2) FROM LAST OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

