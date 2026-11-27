-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	g_3."ParentID",
	g_3."Odd",
	g_3."Sum_1"
FROM
	(
		SELECT
			g_2."ParentID",
			g_2."Odd",
			COUNT(*) as "Count_1",
			SUM(g_2."ChildID" + g_2."ParentID") as "Sum_1"
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
	) g_3
WHERE
	g_3."Count_1" NOT BETWEEN 2 AND 2

