-- Firebird.5 Firebird4

SELECT
	"x"."FirstName",
	RANK() OVER(ORDER BY ("x"."PersonID" = 2))
FROM
	"Person" "x"

