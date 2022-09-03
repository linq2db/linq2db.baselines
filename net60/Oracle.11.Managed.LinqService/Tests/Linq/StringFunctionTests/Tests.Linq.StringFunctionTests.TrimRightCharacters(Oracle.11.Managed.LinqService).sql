BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	RTRIM(('  ' || p."FirstName" || ' '), ' n') = '  Joh' AND
	p."PersonID" = 1

