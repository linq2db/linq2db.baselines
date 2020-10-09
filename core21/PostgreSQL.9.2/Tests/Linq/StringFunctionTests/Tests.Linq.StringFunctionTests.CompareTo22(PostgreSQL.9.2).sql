BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	0 >= CASE
		WHEN p."FirstName" > 'Johnn'
			THEN 1
		WHEN p."FirstName" = 'Johnn'
			THEN 0
		ELSE -1
	END AND
	p."PersonID" = 1

