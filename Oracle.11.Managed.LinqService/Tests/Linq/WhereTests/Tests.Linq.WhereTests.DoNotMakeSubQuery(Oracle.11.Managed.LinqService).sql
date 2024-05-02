BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p2."PersonID",
	p2."FirstName" || ''
FROM
	"Person" p2
WHERE
	p2."PersonID" = 1

