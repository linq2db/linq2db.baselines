BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @gender Char(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @gender

