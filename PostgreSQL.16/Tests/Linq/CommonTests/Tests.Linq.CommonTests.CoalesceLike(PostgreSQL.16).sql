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
		WHEN p."FirstName" IS NULL THEN NULL
		WHEN p."FirstName" LIKE 'Jo%' ESCAPE '~' THEN True
		ELSE False
	END = True

