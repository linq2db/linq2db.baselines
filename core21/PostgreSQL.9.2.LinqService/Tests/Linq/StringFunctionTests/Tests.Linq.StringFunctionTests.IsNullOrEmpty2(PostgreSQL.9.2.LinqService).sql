BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	(p."FirstName" IS NULL OR Length(p."FirstName") = 0)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

