BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position('oh' in p."FirstName") - 1 = 1 AND p."PersonID" = 1

