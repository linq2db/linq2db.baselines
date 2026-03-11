-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	'I-' || CAST(x."PersonID" AS VarChar(255)),
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	NULL,
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

