-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	InStr(p."FirstName", 'J', 1)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

