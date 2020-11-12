BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		OFFSET 2 
	) t2

