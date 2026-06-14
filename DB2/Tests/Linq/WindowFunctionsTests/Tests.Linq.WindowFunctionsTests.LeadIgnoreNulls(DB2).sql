-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	LEAD("t"."IntValue", 1, CAST(NULL AS Int), 'IGNORE NULLS') OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

