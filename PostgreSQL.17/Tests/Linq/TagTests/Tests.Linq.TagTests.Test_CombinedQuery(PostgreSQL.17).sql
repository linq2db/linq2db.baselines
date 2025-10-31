-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

/* query 1
query 2 */
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."LastName" = 'a' AND p."FirstName" = 'a'

