BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT
	"r"."PersonID",
	"r"."LastName",
	"r"."FirstName"
FROM
	"Person" "r"
ORDER BY
	"r"."FirstName"
OFFSET 1 ROWS FETCH NEXT @take ROWS ONLY 

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

