BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	g_1.cond
FROM
	(
		SELECT
			c_1."ParentID" as "Key_1",
			COUNT(*) as cond
		FROM
			"Child" c_1
		GROUP BY
			c_1."ParentID"
		HAVING
			c_1."ParentID" > 1
	) g_1
WHERE
	g_1."Key_1" > 1 AND g_1.cond > 1

