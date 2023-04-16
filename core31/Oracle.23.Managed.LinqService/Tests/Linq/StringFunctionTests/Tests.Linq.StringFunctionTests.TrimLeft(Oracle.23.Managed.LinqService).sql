BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	LTRIM('  ' || p."FirstName" || ' ') = 'John ' AND p."PersonID" = 1

