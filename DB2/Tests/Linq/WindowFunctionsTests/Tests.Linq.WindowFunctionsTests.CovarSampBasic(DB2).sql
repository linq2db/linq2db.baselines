-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	COVAR_SAMP("t"."DoubleValue", "t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

