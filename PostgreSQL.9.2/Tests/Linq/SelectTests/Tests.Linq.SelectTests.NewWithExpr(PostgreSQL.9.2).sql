-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."PersonID",
	RTRIM(p."FirstName" || '1', '')
FROM
	"Person" p

