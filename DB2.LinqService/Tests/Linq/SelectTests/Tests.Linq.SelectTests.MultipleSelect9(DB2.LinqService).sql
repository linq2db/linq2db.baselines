BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Length Integer(4) -- Int32
SET     @Length = 2

SELECT
	("p5"."PersonID" * @Length) / 2,
	"p5"."FirstName"
FROM
	"Person" "p5"

