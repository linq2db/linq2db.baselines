-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."PersonID",
	RTRIM(p."FirstName" || '1', '')
FROM
	"Person" p

