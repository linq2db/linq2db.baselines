BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1992-01-11 01:11:21.100' AS timestamp)

SELECT FIRST 1
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1993-01-11 01:11:21.100' AS timestamp)

SELECT FIRST 1
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime

