BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%o~%h%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%o~%h%' ESCAPE '~' AND p."PersonID" = 1

