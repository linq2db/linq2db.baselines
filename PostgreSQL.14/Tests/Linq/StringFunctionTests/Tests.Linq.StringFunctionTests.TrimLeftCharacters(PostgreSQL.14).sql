-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND LTRIM(('  ' || pp."FirstName" || ' '), (' J')) = 'ohn '

