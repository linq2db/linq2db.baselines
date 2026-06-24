-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	p."PersonID",
	RTRIM(p."FirstName" || '1', '')
FROM
	"Person" p

