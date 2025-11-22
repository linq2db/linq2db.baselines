-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || 1 = 'John 1'

