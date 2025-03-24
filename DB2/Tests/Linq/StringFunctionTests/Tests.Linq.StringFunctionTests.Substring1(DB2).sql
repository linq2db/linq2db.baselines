BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Substr("p"."FirstName", 2, CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) - 1) = 'ohn' AND
	"p"."PersonID" = 1

