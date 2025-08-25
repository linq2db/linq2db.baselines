BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender",
	NULL,
	NULL
FROM
	"Person" x
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	x_1."PersonID",
	x_1."Diagnosis"
FROM
	"Patient" x_1

