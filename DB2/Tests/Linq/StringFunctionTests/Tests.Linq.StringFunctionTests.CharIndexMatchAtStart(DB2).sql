-- DB2 DB2.LUW DB2LUW
SELECT
	Locate('J', "p"."FirstName", 1)
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

