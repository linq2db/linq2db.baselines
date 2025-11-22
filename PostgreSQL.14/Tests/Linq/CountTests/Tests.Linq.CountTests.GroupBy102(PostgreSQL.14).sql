-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	g_2."Max_1",
	g_2."Count_1" + 1,
	g_2."Count_1",
	g_2."Count_2"
FROM
	(
		SELECT
			MAX(g_1."ChildID") as "Max_1",
			COUNT(*) FILTER (WHERE g_1."ChildID" > 20) as "Count_1",
			COUNT(*) FILTER (WHERE g_1."ChildID" > 10) as "Count_2"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2

