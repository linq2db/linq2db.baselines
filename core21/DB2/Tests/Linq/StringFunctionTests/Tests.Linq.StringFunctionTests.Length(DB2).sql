BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Length_1 Integer(4) -- Int32
SET     @Length_1 = 4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) = @Length_1 AND
	"p"."PersonID" = 1

