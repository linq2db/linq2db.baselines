BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		OFFSET 2 ROWS
	) t2

