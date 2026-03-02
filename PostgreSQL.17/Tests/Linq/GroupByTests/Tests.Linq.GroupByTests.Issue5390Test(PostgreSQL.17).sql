-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			Date_Trunc('day', g_1."CreatedOnUtc") as "Date_1"
		FROM
			"Issue5390Table" g_1
	) g_2
GROUP BY
	g_2."Date_1"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."CreatedOnUtc"
FROM
	"Issue5390Table" t1

