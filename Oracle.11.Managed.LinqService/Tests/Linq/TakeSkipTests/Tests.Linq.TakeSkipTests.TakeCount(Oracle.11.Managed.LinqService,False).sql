BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		WHERE
			ROWNUM <= 5
	) t2

