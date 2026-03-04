-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(p."PersonID")
FROM
	"Person" p
WHERE
	p."PersonID" IN (1, 2)
LIMIT 2

-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(p."PersonID")
FROM
	"Person" p
WHERE
	1 = 0
LIMIT 2

