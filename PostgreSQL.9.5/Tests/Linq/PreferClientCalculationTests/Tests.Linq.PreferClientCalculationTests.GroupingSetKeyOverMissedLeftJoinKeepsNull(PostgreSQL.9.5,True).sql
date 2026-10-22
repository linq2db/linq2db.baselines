-- PostgreSQL.9.5 PostgreSQL
SELECT
	g_2."K_1",
	COUNT(*)
FROM
	(
		SELECT
			j."Value1" + 1 as "K_1"
		FROM
			"PartialJoinEntity" g_1
				LEFT JOIN "PartialJoinEntity" j ON j."Id" = g_1."Id" + 1
	) g_2
GROUP BY ROLLUP (
	g_2."K_1"
)

