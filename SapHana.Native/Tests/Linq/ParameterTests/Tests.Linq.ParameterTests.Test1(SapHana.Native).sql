-- SapHana.Native SapHana
DECLARE @dt TimeStamp -- DateTime2
SET     @dt = TIMESTAMP '2020-02-29 17:54:55.1231234'

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" = :"dt"

