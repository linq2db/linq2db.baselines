BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(p2."PersonID" * 2) / LENGTH('22'),
	p2."FirstName"
FROM
	"Person" p2

