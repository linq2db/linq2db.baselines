-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	((p."PersonID" + 1) - BITAND(p."PersonID", 1) * 2 + 2) - BITAND((p."PersonID" + 1) - BITAND(p."PersonID", 1) * 2, 2) = 3

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

