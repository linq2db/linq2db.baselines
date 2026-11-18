-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."Key_1",
	"g_2".PD
FROM
	(
		SELECT
			"g_1"."CategoryId" as "Key_1",
			PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY "g_1"."IntValue") as PD
		FROM
			"WindowFunctionTestEntity" "g_1"
		GROUP BY
			"g_1"."CategoryId"
	) "g_2"
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."CategoryId") as "rn",
				"t"."CategoryId"
			FROM
				"WindowFunctionTestEntity" "t"
		) "t1" ON "g_2"."Key_1" = "t1"."CategoryId" AND "t1"."rn" = 1

