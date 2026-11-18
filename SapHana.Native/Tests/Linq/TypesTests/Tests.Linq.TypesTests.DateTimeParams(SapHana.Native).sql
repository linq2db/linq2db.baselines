-- SapHana.Native SapHana
DECLARE @dateTime TimeStamp -- DateTime2
SET     @dateTime = TIMESTAMP '1992-01-11 01:11:21.1000000'

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > :"dateTime"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @dateTime TimeStamp -- DateTime2
SET     @dateTime = TIMESTAMP '1993-01-11 01:11:21.1000000'

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > :"dateTime"
LIMIT 1

