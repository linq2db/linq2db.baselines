-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	'ибн Алёша' as "Item4"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

