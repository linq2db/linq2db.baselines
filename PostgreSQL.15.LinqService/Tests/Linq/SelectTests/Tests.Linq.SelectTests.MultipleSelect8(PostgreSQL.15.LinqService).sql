BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	(p2."PersonID" * 2) / LENGTH('22'),
	p2."FirstName"
FROM
	"Person" p2

