-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" t1
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t2
	)
FROM SYS.DUAL
WHERE
	ROWNUM <= 2

