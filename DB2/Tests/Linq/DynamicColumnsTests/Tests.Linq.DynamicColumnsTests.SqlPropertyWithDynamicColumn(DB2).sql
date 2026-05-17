-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."PersonID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = 'John'

