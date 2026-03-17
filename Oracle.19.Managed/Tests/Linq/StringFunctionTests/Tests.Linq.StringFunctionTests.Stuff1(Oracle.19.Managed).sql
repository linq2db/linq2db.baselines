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
	Substr(p."FirstName", 1, 2) || '123' || Substr(p."FirstName", Length(p."FirstName") - (Length(p."FirstName") - 3) + 1, Length(p."FirstName") - 3) = 'Jo123n' AND
	p."PersonID" = 1

