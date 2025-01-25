BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND RTRIM(('  ' || pp."FirstName" || ' '), ' n') = '  Joh'

