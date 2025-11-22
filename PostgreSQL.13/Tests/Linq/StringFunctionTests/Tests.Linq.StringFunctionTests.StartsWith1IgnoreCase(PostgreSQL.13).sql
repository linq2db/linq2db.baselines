-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE 'joH%' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE 'joH%' ESCAPE '~' AND p."PersonID" = 1

