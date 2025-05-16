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
	Left("p"."FirstName", 1) || RIGHT("p"."FirstName", CHAR_LENGTH("p"."FirstName") - 3) = 'Jn' AND
	"p"."PersonID" = 1

