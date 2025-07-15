BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Hour Integer(4) -- Int32
SET     @Hour = 22

SELECT
	Extract(hour from ("t"."DateTimeValue" + @Hour HOUR))
FROM
	"LinqDataTypes" "t"

