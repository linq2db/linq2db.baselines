-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID",
	p."Gender"
FROM
	"Person" p
ORDER BY
	p."Gender",
	p."PersonID"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

