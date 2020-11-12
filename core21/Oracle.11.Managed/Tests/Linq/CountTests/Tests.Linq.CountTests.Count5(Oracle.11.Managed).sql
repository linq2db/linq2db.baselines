BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as "c1"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) t2

