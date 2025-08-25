BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @param2 TinyInt(1) -- Byte
SET     @param2 = 0

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
	"t"."BoolValue" = ?

