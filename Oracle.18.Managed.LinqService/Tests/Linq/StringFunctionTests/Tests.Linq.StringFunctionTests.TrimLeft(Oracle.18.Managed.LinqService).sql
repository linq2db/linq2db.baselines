BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	LTRIM('  ' || pp."FirstName" || ' ') = 'John ' AND
	pp."PersonID" = 1

