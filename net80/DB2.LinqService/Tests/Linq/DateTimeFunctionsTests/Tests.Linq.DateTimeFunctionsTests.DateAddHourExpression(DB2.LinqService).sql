BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	To_Number(To_Char(("t"."DateTimeValue" + @p Hour), 'HH24'))
FROM
	"LinqDataTypes" "t"

