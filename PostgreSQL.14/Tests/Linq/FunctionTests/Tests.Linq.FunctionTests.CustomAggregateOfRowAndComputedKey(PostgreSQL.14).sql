-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	g_2."Key_1",
	SUM(g_2."ChildID" + g_2."Key_1"),
	SUM(g_2."ChildID" + COALESCE(g_2."Key_1", 0))
FROM
	(
		SELECT
			Floor(g_1."ChildID"::decimal % 3)::Int as "Key_1",
			g_1."ChildID"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."Key_1"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	g_2."ParentID",
	g_2."Odd",
	SUM(g_2."ChildID" + g_2."ParentID")
FROM
	(
		SELECT
			g_1."ParentID",
			Floor(g_1."ChildID"::decimal % 2)::Int as "Odd",
			g_1."ChildID"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."ParentID",
	g_2."Odd"

