BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
		WHEN LENGTH(p."FirstName") = 2 THEN p."FirstName" || '123'
		ELSE Substring(p."FirstName", 1, 2) || '123' || Substring(p."FirstName", LENGTH(p."FirstName") - (LENGTH(p."FirstName") - 2) + 1, LENGTH(p."FirstName") - 2)
	END = 'Jo123hn' AND
	p."PersonID" = 1

