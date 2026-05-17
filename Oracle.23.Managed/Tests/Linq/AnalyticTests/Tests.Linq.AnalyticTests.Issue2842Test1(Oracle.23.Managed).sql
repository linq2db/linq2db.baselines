-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."FirstName",
	RANK() OVER(ORDER BY (x."PersonID" = 2))
FROM
	"Person" x

