-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_2."Min_1"
FROM
	(
		SELECT
			MIN(g_1."ChildID") FILTER (WHERE g_1."ParentID" > 2) as cond,
			MIN(g_1."ChildID") FILTER (WHERE g_1."ParentID" > 2) as "Min_1"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2.cond IS NOT NULL

