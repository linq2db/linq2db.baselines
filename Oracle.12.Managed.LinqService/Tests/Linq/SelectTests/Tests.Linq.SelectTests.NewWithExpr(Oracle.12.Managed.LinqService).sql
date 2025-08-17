BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."PersonID",
	RTRIM((p."FirstName" || '1'), '')
FROM
	"Person" p

