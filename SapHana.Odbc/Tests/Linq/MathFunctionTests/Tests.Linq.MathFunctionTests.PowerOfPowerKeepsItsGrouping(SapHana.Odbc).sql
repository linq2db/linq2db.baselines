-- SapHana.Odbc SapHanaOdbc
SELECT
	Power(2, Power(CAST(MOD("p"."ID", 3) + 1 AS Double), 2))
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	Power(Power(CAST(MOD("p"."ID", 3) + 1 AS Double), 2), 3)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

