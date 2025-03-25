BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substring(p."FirstName", 1, 1) || Substring(p."FirstName", LENGTH(p."FirstName") - (LENGTH(p."FirstName") - 3) + 1, LENGTH(p."FirstName") - 3) = 'Jn' AND
	p."PersonID" = 1

