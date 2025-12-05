-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."PersonID",
	RTRIM((p."FirstName" || '1'), '')
FROM
	"Person" p

