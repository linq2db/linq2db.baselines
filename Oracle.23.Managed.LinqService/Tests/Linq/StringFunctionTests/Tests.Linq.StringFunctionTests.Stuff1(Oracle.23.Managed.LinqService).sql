BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substr(p."FirstName", 1, 2) || '123' || Substr(p."FirstName", LENGTH(p."FirstName") - (LENGTH(p."FirstName") - 3) + 1, LENGTH(p."FirstName") - 3) = 'Jo123n' AND
	p."PersonID" = 1

