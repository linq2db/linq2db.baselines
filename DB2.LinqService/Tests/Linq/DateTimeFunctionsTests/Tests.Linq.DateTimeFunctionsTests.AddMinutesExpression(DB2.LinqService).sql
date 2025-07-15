BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Minute Integer(4) -- Int32
SET     @Minute = -8

SELECT
	Extract(minute from ("t"."DateTimeValue" + @Minute MINUTE))
FROM
	"LinqDataTypes" "t"

