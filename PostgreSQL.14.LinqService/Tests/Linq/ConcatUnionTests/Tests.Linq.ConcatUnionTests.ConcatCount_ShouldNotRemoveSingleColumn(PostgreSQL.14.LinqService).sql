BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."PersonID"
		FROM
			"Person" t1
		UNION ALL
		SELECT
			t2."ParentID" as "PersonID"
		FROM
			"Parent" t2
	) t3

