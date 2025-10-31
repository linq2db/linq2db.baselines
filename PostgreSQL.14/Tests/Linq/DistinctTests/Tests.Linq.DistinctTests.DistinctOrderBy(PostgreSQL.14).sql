-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	(
		SELECT DISTINCT
			ch."ParentID"
		FROM
			"Child" ch
	) t1
ORDER BY
	t1."ParentID"

