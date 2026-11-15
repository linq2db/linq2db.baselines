-- DB2 DB2.LUW DB2LUW
DECLARE @boxed Char(1) -- StringFixedLength
SET     @boxed = 'M'

SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @boxed

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

