-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Min_2"
FROM
	(
		SELECT
			MIN(g_1."ChildID") FILTER (WHERE g_1."ParentID" > 2) as "Min_1",
			MIN(g_1."ChildID") FILTER (WHERE g_1."ParentID" > 2) as "Min_2"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2."Min_1" IS NOT NULL

