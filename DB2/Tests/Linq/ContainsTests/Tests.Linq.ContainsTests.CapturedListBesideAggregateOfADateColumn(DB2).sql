-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX("g_1"."Day") as "Max_1"
		FROM
			"DayRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
WHERE
	"t1"."Max_1" IN (CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6)))

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX("g_1"."Day") as "Max_1"
		FROM
			"DayRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
WHERE
	"t1"."Max_1" IN (CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6)))

