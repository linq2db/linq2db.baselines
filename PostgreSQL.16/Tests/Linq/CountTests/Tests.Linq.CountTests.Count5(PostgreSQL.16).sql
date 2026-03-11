-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Child" t1
	) t2

