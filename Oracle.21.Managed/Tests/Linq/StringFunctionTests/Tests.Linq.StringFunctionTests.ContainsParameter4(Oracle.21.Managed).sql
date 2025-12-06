-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1.ID,
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	(
		SELECT
			CASE
				WHEN p."FirstName" LIKE '%Jo%' ESCAPE '~' THEN 1
				ELSE 0
			END as "Field1",
			p."FirstName",
			p."PersonID" as ID,
			p."LastName",
			p."MiddleName",
			p."Gender"
		FROM
			"Person" p
	) t1
WHERE
	t1."Field1" = 1
ORDER BY
	t1."Field1"

