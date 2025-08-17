BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."PersonID",
	'123' || p."FirstName" || '456'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123' || p."FirstName" || '456' = '123John456'

