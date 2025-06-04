BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p,
	(
		SELECT 1 AS "value" FROM "Person"
	) s(value)
WHERE
	s.value = 1

