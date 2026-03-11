-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			g_1."ParentID"
		FROM
			"Child" g_1
		WHERE
			g_1."ParentID" > 2
	) t1

