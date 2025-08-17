BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

