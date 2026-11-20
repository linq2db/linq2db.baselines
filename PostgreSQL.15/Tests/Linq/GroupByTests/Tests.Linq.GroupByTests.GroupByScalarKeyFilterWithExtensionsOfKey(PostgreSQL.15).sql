-- PostgreSQL.15 PostgreSQL12
SELECT
	g_2."Key_1",
	g_2."Doubled",
	g_2."InRange"
FROM
	(
		SELECT
			g_1."ParentID" as "Key_1",
			COUNT(*) as "Count_1",
			g_1."ParentID" * 2 as "Doubled",
			g_1."ParentID" BETWEEN 2 AND 4 as "InRange"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2."Count_1" NOT BETWEEN 2 AND 3

