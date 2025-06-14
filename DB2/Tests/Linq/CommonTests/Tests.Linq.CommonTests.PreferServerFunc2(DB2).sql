BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Length Integer(4) -- Int32
SET     @Length = 0

SELECT
	CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) + @Length
FROM
	"Person" "p"

