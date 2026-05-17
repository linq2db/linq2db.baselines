-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2."ID1",
	g_2."ID2" + 1,
	g_2."ID2",
	g_2."ID4"
FROM
	(
		SELECT
			MAX(g_1."ChildID") as "ID1",
			COUNT(*) FILTER (WHERE g_1."ChildID" > 20) as "ID2",
			COUNT(*) FILTER (WHERE g_1."ChildID" > 10) as "ID4"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2

