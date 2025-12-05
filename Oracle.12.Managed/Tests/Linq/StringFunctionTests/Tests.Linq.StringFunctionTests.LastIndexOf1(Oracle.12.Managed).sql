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
	Length(p."LastName") - InStr(Reverse(p."LastName"), 'p') = 2 AND
	InStr(p."LastName", 'p') <> 0 AND p."PersonID" = 1

