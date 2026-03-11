-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."LastName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

