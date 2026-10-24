-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."LastName" || ', ' || p."FirstName"
FROM
	"Person" p
WHERE
	(p."LastName" || ', ' || p."FirstName") = 'Pupkin, John'

