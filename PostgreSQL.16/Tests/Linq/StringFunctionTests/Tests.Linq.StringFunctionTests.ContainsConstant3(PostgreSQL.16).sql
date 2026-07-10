-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" IN ('oh', 'oh''', 'oh\')

