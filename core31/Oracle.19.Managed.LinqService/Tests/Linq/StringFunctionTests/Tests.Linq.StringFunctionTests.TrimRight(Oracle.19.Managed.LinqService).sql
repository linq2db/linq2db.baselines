BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	RTRIM('  ' || p."FirstName" || ' ') = '  John' AND
	p."PersonID" = 1

