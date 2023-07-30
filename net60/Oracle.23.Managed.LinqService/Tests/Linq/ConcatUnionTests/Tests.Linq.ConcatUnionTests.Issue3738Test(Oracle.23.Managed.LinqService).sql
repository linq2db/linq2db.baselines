BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	'I-' || Cast(x."PersonID" as VarChar(11)),
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	NULL,
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

