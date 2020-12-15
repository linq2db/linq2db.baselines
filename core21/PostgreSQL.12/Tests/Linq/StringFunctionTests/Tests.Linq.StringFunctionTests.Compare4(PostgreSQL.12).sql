BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
		WHEN Lower(Substring(p."FirstName", 2, 2)) > 'oh'
			THEN 1
		WHEN Lower(Substring(p."FirstName", 2, 2)) = 'oh'
			THEN 0
		ELSE -1
	END = 0 AND
	p."PersonID" = 1

