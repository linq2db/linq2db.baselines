BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @dt DateTime
SET     @dt = '2020-02-29 17:54:55.123'

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
	"t"."DateTimeValue" = ?

