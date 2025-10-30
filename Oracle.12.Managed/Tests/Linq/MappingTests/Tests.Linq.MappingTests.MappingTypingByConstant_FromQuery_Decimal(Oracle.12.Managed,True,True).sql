-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			NULL as "Value_1"
		FROM
			"Person" r
	) t1

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			2147483648.123 as "Value_1"
		FROM
			"Person" r
	) t1

