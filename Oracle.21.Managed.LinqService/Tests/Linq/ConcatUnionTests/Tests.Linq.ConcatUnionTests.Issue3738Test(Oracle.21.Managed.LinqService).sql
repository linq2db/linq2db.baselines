BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	'I-' || x."PersonID",
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	NULL,
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

