-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND Trim('  ' || pp."FirstName" || ' ') = 'John'

