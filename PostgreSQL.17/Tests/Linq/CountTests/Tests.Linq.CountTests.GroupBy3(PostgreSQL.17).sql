-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	g_2."ParentID",
	MIN(g_2."ChildID"),
	COUNT(*) FILTER (WHERE g_2."ChildID" > 25)
FROM
	(
		SELECT
			g_1."ParentID" + 1 as "ParentID",
			g_1."ChildID"
		FROM
			"Child" g_1
		WHERE
			g_1."ParentID" > 0
	) g_2
GROUP BY
	g_2."ParentID"

