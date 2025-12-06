-- PostgreSQL.13 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	COUNT(*) FILTER (WHERE g_2."ParentID" < 3)
FROM
	(
		SELECT
			g_1."ParentID" + 1 as "ParentID"
		FROM
			"Child" g_1
		WHERE
			g_1."ParentID" + 2 > :n
	) g_2
GROUP BY
	g_2."ParentID"

