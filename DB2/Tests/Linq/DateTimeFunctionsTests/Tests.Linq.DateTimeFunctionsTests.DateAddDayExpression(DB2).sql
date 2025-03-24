BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5

SELECT
	DATE("t"."DateTimeValue" + CAST(@Value AS Int) DAY)
FROM
	"LinqDataTypes" "t"

