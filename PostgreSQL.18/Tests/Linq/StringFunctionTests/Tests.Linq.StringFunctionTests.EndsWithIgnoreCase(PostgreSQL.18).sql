BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

