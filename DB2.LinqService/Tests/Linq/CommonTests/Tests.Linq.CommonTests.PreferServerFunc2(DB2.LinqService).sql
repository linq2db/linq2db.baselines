BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Length Integer(4) -- Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH("p"."FirstName") + @Length
FROM
	"Person" "p"

