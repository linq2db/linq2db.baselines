-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IN ('John', 'Jane')

