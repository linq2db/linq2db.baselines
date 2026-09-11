-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."PersonID",
	RTRIM(p."FirstName" || '1', '')
FROM
	"Person" p

