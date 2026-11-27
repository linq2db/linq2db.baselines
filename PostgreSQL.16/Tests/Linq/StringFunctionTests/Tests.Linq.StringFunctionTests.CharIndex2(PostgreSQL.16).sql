-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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
		WHEN Position('p' in Substring(p."LastName", 2)) = 0 THEN 0
		ELSE Position('p' in Substring(p."LastName", 2)) + 1
	END = 3 AND
	p."PersonID" = 1

