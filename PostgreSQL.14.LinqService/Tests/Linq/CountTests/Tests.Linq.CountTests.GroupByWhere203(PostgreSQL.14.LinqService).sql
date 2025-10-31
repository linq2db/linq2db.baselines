BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			g_1."ParentID" as "Key_1",
			COUNT(CASE
				WHEN g_1."ChildID" > 20 THEN 1
				ELSE NULL
			END) as "Count_1"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2."Count_1" > 2 OR g_2."Key_1" > 2

