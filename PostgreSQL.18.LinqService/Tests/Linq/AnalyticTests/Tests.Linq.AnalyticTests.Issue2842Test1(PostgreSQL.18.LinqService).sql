BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	x."FirstName",
	RANK() OVER(ORDER BY (x."PersonID" = 2))
FROM
	"Person" x

