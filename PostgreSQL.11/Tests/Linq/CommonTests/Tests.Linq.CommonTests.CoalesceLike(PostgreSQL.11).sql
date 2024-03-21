BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
		WHEN p."FirstName" IS NULL THEN NULL
		WHEN p."FirstName" LIKE 'Jo%' ESCAPE '~' THEN True
		ELSE False
	END = True

