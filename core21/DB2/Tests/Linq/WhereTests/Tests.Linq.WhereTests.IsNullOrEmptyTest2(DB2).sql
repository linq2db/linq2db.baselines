BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	("nm"."FirstName" IS NOT NULL AND (CHARACTER_LENGTH("nm"."FirstName",CODEUNITS32) <> 0 OR CHARACTER_LENGTH("nm"."FirstName",CODEUNITS32) IS NULL))

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

