-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) t2

