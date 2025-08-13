BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND ROWNUM <= 1

