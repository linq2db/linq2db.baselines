-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	l."PersonID",
	r."PersonID",
	r."Gender"
FROM
	"Person" l
		INNER JOIN "Person" r ON l."Gender" = r."Gender"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

