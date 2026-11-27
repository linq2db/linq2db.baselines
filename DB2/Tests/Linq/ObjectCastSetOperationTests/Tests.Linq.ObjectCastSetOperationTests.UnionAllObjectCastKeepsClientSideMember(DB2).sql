-- DB2 DB2.LUW DB2LUW
SELECT
	VarChar('p_', 255),
	"p"."PersonID",
	VarChar('X', 255),
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > 2
UNION ALL
SELECT
	VarChar('q_', 255),
	"p_1"."PersonID",
	VarChar('X', 255),
	"p_1"."FirstName"
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

