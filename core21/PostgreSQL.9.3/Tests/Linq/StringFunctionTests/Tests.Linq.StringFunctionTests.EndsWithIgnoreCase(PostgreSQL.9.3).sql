BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

