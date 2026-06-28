-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

