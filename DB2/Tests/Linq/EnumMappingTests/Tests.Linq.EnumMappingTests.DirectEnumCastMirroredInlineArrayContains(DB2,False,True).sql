-- DB2 DB2.LUW DB2LUW
DECLARE @api Char(1) -- StringFixedLength
SET     @api = 'M'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	@api IN ("p"."Gender", 'M')

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

