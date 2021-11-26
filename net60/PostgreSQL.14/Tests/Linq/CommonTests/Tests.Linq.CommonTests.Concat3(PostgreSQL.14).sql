BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	(((p."FirstName" || ' ') || Cast(1 as text)) || Cast(2 as text)) = 'John 12'

