BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" IN ('oh', 'oh''', 'oh\')

