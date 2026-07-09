-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

