BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substring(p."FirstName", 1, 2) = 'Jo' AND p."PersonID" = 1

