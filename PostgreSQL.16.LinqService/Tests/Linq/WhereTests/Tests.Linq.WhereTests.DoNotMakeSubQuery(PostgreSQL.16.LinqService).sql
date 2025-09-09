BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p2."PersonID",
	RTRIM((p2."FirstName" || ''), '')
FROM
	"Person" p2
WHERE
	p2."PersonID" = 1

