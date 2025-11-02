-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	(p."FirstName" || ' 12') = 'John 12'

