BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

