-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p"."Gender",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (1, 3)
ORDER BY
	"p"."LastName"

