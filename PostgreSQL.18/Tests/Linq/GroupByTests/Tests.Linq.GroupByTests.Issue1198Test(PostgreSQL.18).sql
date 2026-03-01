-- PostgreSQL.18 PostgreSQL

SELECT
	t1."MyGroupedCount"
FROM
	(
		SELECT
			COUNT(*) FILTER (WHERE g_1."Status" = 3) as "MyGroupedCount"
		FROM
			"Issue1192Table" g_1
		WHERE
			g_1."MyOtherId" = 12
	) t1
LIMIT 1

