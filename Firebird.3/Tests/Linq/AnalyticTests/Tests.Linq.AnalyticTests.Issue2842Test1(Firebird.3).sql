BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."FirstName",
	RANK() OVER(ORDER BY ("x"."PersonID" = 2))
FROM
	"Person" "x"

