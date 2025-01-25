BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	substr(p."FirstName", -3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

