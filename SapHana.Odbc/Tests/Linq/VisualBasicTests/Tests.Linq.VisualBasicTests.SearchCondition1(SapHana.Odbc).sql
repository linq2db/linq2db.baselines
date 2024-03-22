BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
	"t"."BoolValue" = 0 AND (Cast("t"."SmallIntValue" as Integer) = 5 OR Cast("t"."SmallIntValue" as Integer) = 7 OR (Cast("t"."SmallIntValue" as Integer) + 2) - BITAND(Cast("t"."SmallIntValue" as Integer), 2) = 10)

