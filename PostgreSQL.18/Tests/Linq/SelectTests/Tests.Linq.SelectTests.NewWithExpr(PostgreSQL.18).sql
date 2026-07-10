-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID",
	RTRIM(p."FirstName" || '1', '')
FROM
	"Person" p

