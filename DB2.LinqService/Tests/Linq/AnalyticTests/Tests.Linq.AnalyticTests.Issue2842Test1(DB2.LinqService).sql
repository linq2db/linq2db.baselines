BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."FirstName",
	RANK() OVER(ORDER BY ("x"."PersonID" = 2))
FROM
	"Person" "x"

