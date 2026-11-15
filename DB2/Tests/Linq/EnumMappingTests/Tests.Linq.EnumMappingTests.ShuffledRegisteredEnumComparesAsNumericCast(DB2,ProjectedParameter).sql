-- DB2 DB2.LUW DB2LUW
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 'M'

SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @value

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

