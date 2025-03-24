BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Length Integer(4) -- Int32
SET     @Length = 4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) = @Length AND
	"p"."PersonID" = 1

