BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	x."FirstName",
	RANK() OVER(ORDER BY CASE
		WHEN x."PersonID" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Person" x

