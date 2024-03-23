BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		FETCH NEXT 5 ROWS ONLY
	) t2

