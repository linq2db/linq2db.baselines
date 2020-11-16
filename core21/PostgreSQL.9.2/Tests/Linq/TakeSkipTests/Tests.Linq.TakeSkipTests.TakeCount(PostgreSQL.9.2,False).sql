BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		LIMIT 5
	) t2

