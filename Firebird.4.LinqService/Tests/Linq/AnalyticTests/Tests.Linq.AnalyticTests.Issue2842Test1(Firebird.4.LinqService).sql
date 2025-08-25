BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"x"."FirstName",
	RANK() OVER(ORDER BY ("x"."PersonID" = 2))
FROM
	"Person" "x"

