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
		WHEN Position('p' in p."LastName") = 0
			THEN -1
		ELSE Length(p."LastName") - Position('p' in Reverse(p."LastName"))
	END = 2 AND p."PersonID" = 1

