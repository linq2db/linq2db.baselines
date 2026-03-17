-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

