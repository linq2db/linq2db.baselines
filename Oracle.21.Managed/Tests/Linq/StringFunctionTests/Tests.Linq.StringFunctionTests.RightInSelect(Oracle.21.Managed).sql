BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	substr(p."FirstName", -3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

