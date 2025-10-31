-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Jo%' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'jo%' ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE 'Jo%' ESCAPE '~' AND p."PersonID" = 1

