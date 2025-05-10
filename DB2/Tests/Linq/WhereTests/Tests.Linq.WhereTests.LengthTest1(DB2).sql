BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	CHARACTER_LENGTH("nm"."MiddleName",CODEUNITS32) <> 0 OR
	"nm"."MiddleName" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

