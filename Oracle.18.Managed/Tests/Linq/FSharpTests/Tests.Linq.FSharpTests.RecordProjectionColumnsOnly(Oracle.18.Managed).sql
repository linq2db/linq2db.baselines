-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" as "Item1",
	p."FirstName" as "Item2",
	p."LastName" as "Item3",
	'ибн Алёша' as "Item4"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

