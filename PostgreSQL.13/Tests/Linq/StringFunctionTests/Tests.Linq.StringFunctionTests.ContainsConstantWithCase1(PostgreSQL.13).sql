-- PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

