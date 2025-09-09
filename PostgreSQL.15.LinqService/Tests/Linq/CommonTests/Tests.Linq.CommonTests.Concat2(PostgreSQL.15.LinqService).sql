BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || 1 = 'John 1'

