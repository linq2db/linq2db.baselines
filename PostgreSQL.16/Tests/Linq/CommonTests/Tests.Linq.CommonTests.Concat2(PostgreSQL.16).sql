-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || 1::text = 'John 1'

