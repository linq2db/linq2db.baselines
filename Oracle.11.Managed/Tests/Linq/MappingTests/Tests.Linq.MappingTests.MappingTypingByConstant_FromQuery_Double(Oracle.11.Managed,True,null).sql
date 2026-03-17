-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			3147483648D as "Value_1"
		FROM
			"Person" r
	) t1

