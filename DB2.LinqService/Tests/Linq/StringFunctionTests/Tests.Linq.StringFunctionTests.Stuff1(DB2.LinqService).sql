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
	Left("p"."FirstName", 2) || '123' || RIGHT("p"."FirstName", CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) - 3) = 'Jo123n' AND
	"p"."PersonID" = 1

