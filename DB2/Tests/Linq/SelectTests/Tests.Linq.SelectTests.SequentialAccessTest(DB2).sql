-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."PersonID",
	"p"."LastName",
	"p"."FirstName" || ' ' || "p"."LastName"
FROM
	"Person" "p"

