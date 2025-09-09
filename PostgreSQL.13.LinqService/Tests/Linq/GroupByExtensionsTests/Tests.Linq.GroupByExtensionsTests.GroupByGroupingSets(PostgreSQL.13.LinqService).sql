BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	GROUPING(g_2."Id1"),
	g_2."Id1",
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			g_1."Id1",
			g_1."Id2",
			g_1."Value" as "Value_1"
		FROM
			"GroupSampleClass" g_1
	) g_2
GROUP BY GROUPING SETS (
	(g_2."Id1", g_2."Id2"),
	(g_2."Id2"),
	()
)

