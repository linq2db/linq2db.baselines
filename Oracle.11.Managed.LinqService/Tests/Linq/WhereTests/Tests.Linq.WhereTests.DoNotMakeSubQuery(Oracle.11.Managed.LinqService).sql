BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p2."PersonID",
	RTRIM((p2."FirstName" || ''), '')
FROM
	"Person" p2
WHERE
	p2."PersonID" = 1

