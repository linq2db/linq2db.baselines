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
	@gender = CASE
		WHEN "p"."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

