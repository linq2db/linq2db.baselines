BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName" || '1'
FROM
	"Person" p

