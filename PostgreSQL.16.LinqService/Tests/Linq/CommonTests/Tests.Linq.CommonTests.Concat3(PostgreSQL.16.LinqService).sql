BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	(p."FirstName" || ' 12') = 'John 12'

