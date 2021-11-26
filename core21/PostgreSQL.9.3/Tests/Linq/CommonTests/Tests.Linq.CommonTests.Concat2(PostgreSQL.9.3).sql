BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || 1 = 'John 1'

