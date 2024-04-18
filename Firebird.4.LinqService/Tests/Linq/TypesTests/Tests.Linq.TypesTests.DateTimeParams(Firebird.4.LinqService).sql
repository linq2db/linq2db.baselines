BeforeExecute
-- Firebird.4 Firebird4
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1992-01-11 01:11:21.100' AS timestamp)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1993-01-11 01:11:21.100' AS timestamp)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime
FETCH NEXT @take ROWS ONLY

