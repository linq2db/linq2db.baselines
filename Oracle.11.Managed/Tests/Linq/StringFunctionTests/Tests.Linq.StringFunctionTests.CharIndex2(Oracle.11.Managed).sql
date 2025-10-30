-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	InStr(p."LastName", 'p', 2) = 3 AND p."PersonID" = 1

