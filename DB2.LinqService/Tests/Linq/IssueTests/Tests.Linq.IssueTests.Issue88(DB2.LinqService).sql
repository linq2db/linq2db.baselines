BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1 AND "t1"."Gender" = 'M'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1 AND 'M' = "t1"."Gender"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @gender Char(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1 AND "t1"."Gender" = @gender

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @gender Char(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1 AND @gender = "t1"."Gender"

