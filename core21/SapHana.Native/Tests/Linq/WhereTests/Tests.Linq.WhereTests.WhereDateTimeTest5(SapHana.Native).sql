BeforeExecute
-- SapHana.Native SapHana
DECLARE @Date_1  -- DateTime2
SET     @Date_1 = '2009-09-20'

SELECT
	"_"."ID",
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."BinaryValue",
	"_"."SmallIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	Cast("_"."DateTimeValue" as Date) = :"Date_1"

