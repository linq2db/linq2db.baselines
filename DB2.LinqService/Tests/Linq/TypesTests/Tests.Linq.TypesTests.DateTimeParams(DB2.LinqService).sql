BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @dateTime Timestamp(20) -- DateTime
SET     @dateTime = '1992-01-11-01.11.21.100000'

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @dateTime Timestamp(20) -- DateTime
SET     @dateTime = '1993-01-11-01.11.21.100000'

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT 1 ROWS ONLY

