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
	p."PersonID" = 1 AND CASE
		WHEN p."MiddleName" IS NOT NULL
			THEN 3
		WHEN p."MiddleName" IS NULL
			THEN 1
		ELSE 2
	END = 1 AND
	CASE
		WHEN p."FirstName" IS NULL
			THEN 3
		WHEN p."FirstName" IS NOT NULL
			THEN 1
		ELSE 2
	END = 1

