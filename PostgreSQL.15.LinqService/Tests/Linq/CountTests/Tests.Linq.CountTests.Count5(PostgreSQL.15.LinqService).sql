BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) t2

