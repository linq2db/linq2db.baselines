BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @dt  -- DateTime2
SET     @dt = '2010-12-14 06:00:07.425'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = :"dt"
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @pdt  -- DateTime2
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = :"pdt"
WHERE
	"LinqDataTypes"."ID" = 1

