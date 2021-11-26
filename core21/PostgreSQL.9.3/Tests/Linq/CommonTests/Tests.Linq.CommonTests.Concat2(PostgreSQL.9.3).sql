BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || Cast(1 as text) = 'John 1'

