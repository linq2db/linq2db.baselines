BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTimeValue_1  -- DateTime
SET     @DateTimeValue_1 = '2009-01-01'

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
	"_"."DateTimeValue" > ?

