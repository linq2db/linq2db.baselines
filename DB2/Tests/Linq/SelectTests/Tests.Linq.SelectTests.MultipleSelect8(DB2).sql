BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Length Integer(4) -- Int32
SET     @Length = 2

SELECT
	("p2"."PersonID" * 2) / @Length,
	"p2"."FirstName"
FROM
	"Person" "p2"

