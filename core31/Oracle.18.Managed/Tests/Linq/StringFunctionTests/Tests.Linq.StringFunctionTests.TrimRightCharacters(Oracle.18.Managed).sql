BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	RTRIM(('  ' || p."FirstName" || ' '), ' n') = '  Joh' AND
	p."PersonID" = 1

