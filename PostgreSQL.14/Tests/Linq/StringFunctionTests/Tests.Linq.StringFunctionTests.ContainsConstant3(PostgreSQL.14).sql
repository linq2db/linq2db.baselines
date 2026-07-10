-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" IN ('oh', 'oh''', 'oh\')

