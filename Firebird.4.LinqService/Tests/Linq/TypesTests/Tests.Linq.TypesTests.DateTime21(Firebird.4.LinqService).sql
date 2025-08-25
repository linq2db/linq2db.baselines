BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @dt TimeStamp -- DateTime
SET     @dt = CAST('2010-12-14 05:00:07.425' AS timestamp)

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = CAST(@dt AS TimeStamp)
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @pdt TimeStamp -- DateTime
SET     @pdt = CAST('2001-01-11 01:11:21.100' AS timestamp)

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = CAST(@pdt AS TimeStamp)
WHERE
	"t".ID = 1

