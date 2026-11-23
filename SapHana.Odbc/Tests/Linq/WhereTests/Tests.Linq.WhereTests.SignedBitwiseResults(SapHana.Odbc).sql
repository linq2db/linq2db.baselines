-- SapHana.Odbc SapHanaOdbc
SELECT
	BITNOT("p"."ID")
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
	BITNOT(CAST("p"."ID" AS BigInt))
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
	BITNOT("p"."SmallIntValue")
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
	"p"."ID" + -5 - BITAND("p"."ID", -5)
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
	CAST("p"."ID" AS BigInt) + -6 - BITAND(CAST("p"."ID" AS BigInt), -6) * 2
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
	BITAND("p"."ID", -3)
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
	BITAND("p"."ID", 6) - 10
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
	-BITAND("p"."ID", 6)
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
	BITAND(CAST("p"."ID" AS BigInt), "p"."ID" - 10)
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

