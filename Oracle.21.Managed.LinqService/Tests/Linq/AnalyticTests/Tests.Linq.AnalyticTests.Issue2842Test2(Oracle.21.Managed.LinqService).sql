BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."FirstName",
	RANK() OVER(ORDER BY CASE
		WHEN x."PersonID" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Person" x

