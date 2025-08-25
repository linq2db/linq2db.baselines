BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."FirstName",
	RANK() OVER(ORDER BY CASE
		WHEN x."PersonID" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Person" x

