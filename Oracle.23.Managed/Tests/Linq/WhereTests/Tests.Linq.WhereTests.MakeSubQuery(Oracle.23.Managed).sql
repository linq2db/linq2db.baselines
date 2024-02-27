BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" + 0,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + 1 = 2

