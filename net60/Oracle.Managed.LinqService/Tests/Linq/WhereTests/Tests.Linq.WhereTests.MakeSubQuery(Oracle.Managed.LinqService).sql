BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	p."PersonID" + 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

