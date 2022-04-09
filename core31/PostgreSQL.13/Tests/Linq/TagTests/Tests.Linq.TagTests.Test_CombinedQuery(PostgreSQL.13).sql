BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

