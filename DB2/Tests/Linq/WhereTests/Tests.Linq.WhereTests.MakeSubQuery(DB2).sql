BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID" + 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

