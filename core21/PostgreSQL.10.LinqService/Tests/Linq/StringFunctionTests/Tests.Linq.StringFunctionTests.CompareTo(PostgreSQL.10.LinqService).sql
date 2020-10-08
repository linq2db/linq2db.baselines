BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
		WHEN p."FirstName" > 'John'
			THEN 1
		WHEN p."FirstName" = 'John'
			THEN 0
		ELSE -1
	END = 0 AND
	p."PersonID" = 1

