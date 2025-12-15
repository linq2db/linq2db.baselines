-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' I' = 'John I'

