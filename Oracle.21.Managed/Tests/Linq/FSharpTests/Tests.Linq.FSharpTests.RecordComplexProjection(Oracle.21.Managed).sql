-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" as "Item1",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND p."FirstName" = 'John' AND p."LastName" = 'Pupkin'
FETCH NEXT 2 ROWS ONLY

