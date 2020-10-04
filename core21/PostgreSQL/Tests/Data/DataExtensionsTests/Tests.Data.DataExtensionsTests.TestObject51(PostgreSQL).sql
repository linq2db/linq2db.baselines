BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
	p."PersonID" = 1
LIMIT 1

