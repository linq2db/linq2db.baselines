-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" IN ('oh', 'oh''', 'oh\')

