-- DB2 DB2.LUW DB2LUW
DECLARE @dateTime Timestamp(20) -- DateTime
SET     @dateTime = CAST('1992-01-11-01.11.21.100000' AS TIMESTAMP(6))

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @dateTime Timestamp(20) -- DateTime
SET     @dateTime = CAST('1993-01-11-01.11.21.100000' AS TIMESTAMP(6))

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT 1 ROWS ONLY

