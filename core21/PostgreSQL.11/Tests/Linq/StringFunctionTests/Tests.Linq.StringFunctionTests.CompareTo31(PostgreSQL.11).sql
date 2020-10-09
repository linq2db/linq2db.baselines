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
		WHEN p."FirstName" > '55' THEN 1
		WHEN p."FirstName" = '55' THEN 0
		ELSE -1
	END >= 0 AND
	p."PersonID" = 1

