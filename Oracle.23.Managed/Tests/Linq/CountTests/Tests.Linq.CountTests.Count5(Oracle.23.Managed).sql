-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Child" t1
	) t2

