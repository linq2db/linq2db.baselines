-- PostgreSQL.13 PostgreSQL13

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND RTRIM('  ' || pp."FirstName" || ' ', ' n') = '  Joh'

