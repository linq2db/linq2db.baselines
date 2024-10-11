BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."COUNT_1"
FROM
	(
		SELECT
			c_1."ParentID" as "Key_1",
			COUNT(*) as "COUNT_1"
		FROM
			"Child" c_1
		GROUP BY
			c_1."ParentID"
		HAVING
			c_1."ParentID" > 1
	) t1
WHERE
	t1."Key_1" > 1 AND t1."COUNT_1" > 1

