-- DB2 DB2.LUW DB2LUW
SELECT
	"g_1"."CategoryId",
	(
		SELECT
			PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY "g_1"."IntValue")
		FROM
			"WindowFunctionTestEntity" "t"
		WHERE
			"g_1"."CategoryId" = "t"."CategoryId"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"WindowFunctionTestEntity" "g_1"
GROUP BY
	"g_1"."CategoryId"

