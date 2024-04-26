BeforeExecute
-- Firebird.5 Firebird4
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1992-01-11 01:11:21.100' AS timestamp)

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1993-01-11 01:11:21.100' AS timestamp)

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT 1 ROWS ONLY

