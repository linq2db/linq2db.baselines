BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Second Integer(4) -- Int32
SET     @Second = -35

SELECT
	Extract(second from ("t"."DateTimeValue" + CAST(@Second AS Int) SECOND))
FROM
	"LinqDataTypes" "t"

