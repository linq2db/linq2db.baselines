BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	(p."FirstName" || ' 12') = 'John 12'

