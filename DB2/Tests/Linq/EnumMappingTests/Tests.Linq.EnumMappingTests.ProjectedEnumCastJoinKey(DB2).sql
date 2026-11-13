-- DB2 DB2.LUW DB2LUW
SELECT
	"l"."PersonID",
	"r"."PersonID",
	"r"."Gender"
FROM
	"Person" "l"
		INNER JOIN "Person" "r" ON "l"."Gender" = "r"."Gender"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

