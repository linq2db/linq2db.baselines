BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	CHAR_LENGTH("nm"."FirstName") <> 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

