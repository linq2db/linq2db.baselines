-- SapHana.Odbc SapHanaOdbc
DECLARE @Date DateTime
SET     @Date = TIMESTAMP '2009-09-20 00:00:00.0000000'

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
	To_Date("t"."DateTimeValue") > ?

