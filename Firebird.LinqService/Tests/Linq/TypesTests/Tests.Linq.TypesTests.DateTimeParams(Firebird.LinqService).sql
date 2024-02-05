BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1992-01-11 01:11:21.100' AS timestamp)

SELECT FIRST @take
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1993-01-11 01:11:21.100' AS timestamp)

SELECT FIRST @take
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime

