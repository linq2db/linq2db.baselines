BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

