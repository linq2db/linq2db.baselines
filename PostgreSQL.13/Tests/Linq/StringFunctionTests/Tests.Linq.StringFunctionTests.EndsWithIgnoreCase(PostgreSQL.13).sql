-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

