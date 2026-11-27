-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN Position('e' in Substring(p."LastName", 3)) = 0 THEN 0
		ELSE Position('e' in Substring(p."LastName", 3)) + 2
	END = 5 AND
	p."PersonID" = 2

