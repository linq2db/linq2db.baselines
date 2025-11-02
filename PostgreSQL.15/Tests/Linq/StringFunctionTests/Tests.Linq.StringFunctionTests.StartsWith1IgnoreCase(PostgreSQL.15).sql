-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE 'joH%' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE 'joH%' ESCAPE '~' AND p."PersonID" = 1

