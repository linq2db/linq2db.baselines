-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

