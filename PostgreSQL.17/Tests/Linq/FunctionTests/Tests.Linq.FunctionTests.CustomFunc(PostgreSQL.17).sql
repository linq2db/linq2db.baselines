-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."LastName" || ', ' || p."FirstName"
FROM
	"Person" p
WHERE
	(p."LastName" || ', ' || p."FirstName") = 'Pupkin, John'

