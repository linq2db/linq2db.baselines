-- Oracle.11.Managed Oracle11
SELECT
	InStr(p."FirstName", 'x', 10)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

