-- DB2 DB2.LUW DB2LUW

SELECT
	"z"."FirstName",
	"z"."PersonID",
	"z"."LastName",
	"z"."MiddleName",
	"z"."Gender"
FROM
	"Person" "z"
WHERE
	"z"."PersonID" = 1

