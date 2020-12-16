BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	("p"."FirstName" IS NOT NULL AND (CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) <> 0 OR CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) IS NULL)) AND
	"p"."PersonID" = 1

