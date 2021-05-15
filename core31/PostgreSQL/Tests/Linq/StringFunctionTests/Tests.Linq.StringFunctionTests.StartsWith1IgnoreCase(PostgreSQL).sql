BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE 'joH%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE 'joH%' ESCAPE '~' AND p."PersonID" = 1

