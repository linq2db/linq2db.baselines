BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p2"."PersonID",
	"t1"."FirstName"
FROM
	"Person" "t1",
	"Person" "p2"
WHERE
	"t1"."PersonID" = "p2"."PersonID"

