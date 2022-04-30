BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 22

SELECT
	To_Number(To_Char(("t"."DateTimeValue" + @p_1 Hour), 'HH24'))
FROM
	"LinqDataTypes" "t"

