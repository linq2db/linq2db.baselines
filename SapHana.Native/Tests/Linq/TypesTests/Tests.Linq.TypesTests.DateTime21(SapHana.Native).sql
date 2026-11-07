-- SapHana.Native SapHana
SELECT
	"t"."ID",
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
	"t"."ID" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @dt TimeStamp -- DateTime2
SET     @dt = TIMESTAMP '2010-12-14 05:00:07.4250141'

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = :"dt"
WHERE
	"t"."ID" = 1

-- SapHana.Native SapHana
SELECT
	"t"."ID",
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
	"t"."ID" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @pdt TimeStamp -- DateTime2
SET     @pdt = TIMESTAMP '2001-01-11 01:11:21.1000000'

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = :"pdt"
WHERE
	"t"."ID" = 1

