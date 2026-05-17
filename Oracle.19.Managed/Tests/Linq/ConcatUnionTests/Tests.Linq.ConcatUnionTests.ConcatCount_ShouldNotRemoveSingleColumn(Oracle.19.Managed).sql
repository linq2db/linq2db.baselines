-- Oracle.19.Managed Oracle.Managed Oracle12

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

