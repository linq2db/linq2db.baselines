-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

