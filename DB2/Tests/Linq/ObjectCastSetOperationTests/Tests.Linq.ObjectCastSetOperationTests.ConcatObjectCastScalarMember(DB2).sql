-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > 2
UNION ALL
SELECT
	"p_1"."LastName"
FROM
	"Person" "p_1"
WHERE
	"p_1"."PersonID" <= 2

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

