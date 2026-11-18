-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1."Day") as "Max_1"
		FROM
			"DayRow" g_1
		GROUP BY
			g_1."Id"
	) t1
WHERE
	t1."Max_1" IN ('2026-06-01'::date)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1."Day") as "Max_1"
		FROM
			"DayRow" g_1
		GROUP BY
			g_1."Id"
	) t1
WHERE
	t1."Max_1" IN ('2026-06-01 10:00:00'::timestamp)

