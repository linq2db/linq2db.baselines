-- DB2 DB2.LUW DB2LUW
DECLARE @gender Integer(4) -- Int32
SET     @gender = 1

SELECT
	"p"."PersonID",
	CAST(@gender AS Int)
FROM
	"Person" "p"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

