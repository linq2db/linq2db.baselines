-- SapHana.Native SapHana
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
	"t1"."Max_1" IN (TIMESTAMP '2026-06-01 00:00:00.0000000')

-- SapHana.Native SapHana
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
	"t1"."Max_1" IN (TIMESTAMP '2026-06-01 10:00:00.0000000')

