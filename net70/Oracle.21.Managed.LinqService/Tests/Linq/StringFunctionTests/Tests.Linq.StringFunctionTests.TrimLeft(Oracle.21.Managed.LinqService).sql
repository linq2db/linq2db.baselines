BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	LTRIM('  ' || p."FirstName" || ' ') = 'John ' AND p."PersonID" = 1

