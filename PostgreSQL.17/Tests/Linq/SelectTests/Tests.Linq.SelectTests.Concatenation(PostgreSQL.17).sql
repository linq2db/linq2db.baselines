-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."PersonID",
	'123' || p."FirstName" || '456'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123' || p."FirstName" || '456' = '123John456'

