-- PostgreSQL.19 PostgreSQL12

SELECT
	p."PersonID",
	RTRIM(p."FirstName" || '1', '')
FROM
	"Person" p

