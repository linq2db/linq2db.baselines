-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."CategoryId",
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY "g_1"."IntValue")
FROM
	"WindowFunctionTestEntity" "g_1"
GROUP BY
	"g_1"."CategoryId"

