-- SapHana.Odbc SapHanaOdbc
SELECT
	BITAND(CAST("p"."ID" AS BigInt), CAST(4294967289 AS BigInt))
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
	(CAST("p"."ID" AS BigInt) + CAST(2147483649 AS BigInt)) - BITAND(CAST("p"."ID" AS BigInt), CAST(2147483649 AS BigInt))
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
	(CAST("p"."ID" AS BigInt) + CAST(4294967295 AS BigInt)) - BITAND(CAST("p"."ID" AS BigInt), CAST(4294967295 AS BigInt)) * 2
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
	BITAND(CAST("p"."ID" AS BigInt), CAST(2147483648 AS BigInt))
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
	BITAND("t"."U", CAST(4294967289 AS BigInt))
FROM
	"UnsignedColumnTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."U"
FROM
	"UnsignedColumnTable" "t1"

