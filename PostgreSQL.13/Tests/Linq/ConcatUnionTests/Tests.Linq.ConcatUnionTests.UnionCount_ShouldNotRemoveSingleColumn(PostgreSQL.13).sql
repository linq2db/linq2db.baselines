BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."PersonID"
		FROM
			"Person" t1
		UNION
		SELECT
			t2."ParentID" as "PersonID"
		FROM
			"Parent" t2
	) t3

