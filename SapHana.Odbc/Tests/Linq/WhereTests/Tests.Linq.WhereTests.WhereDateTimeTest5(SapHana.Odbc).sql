BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
	To_Date("_"."DateTimeValue") = To_Date(To_Timestamp('2009-09-20 00:00:00.000'))

