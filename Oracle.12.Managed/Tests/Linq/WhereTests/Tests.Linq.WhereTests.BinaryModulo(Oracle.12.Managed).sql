-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	MOD(p."PersonID", 2) = 1 AND p."PersonID" = 1

