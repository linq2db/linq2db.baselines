-- SapHana.Native SapHana
SELECT
	CAST(("p"."ID" * 7 + 1) / 2 AS Integer)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST(("p"."ID" * -7 - 1) / 2 AS Integer)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST(("p"."ID" * 7 + 1) / ("p"."ID" - 100) AS Integer)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST((CAST("p"."ID" AS BigInt) * 9 + 2) / 4 AS BigInt)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST((CAST("p"."ID" AS BigInt) * 7 + 1) / 2 AS BigInt)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	Floor((CAST("p"."ID" AS Decimal) * 9 + 2) / 4)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	"p"."ID"
FROM
	"LinqDataTypes" "p"
WHERE
	Floor((CAST("p"."ID" AS Decimal) * 9 + 2) / 4) * 4 = CAST("p"."ID" AS Decimal) * 9 + 2
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST(("p"."ID" * 7 + 1) / 2 AS Integer)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
DECLARE @divisor Integer -- Int32
SET     @divisor = 4

SELECT
	CAST(("p"."ID" * 9 + 2) / :"divisor" AS Integer)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	-("p"."ID" * 7 + 1)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	"p"."ID"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(("p"."ID" * 7 + 1) / 2 AS Integer) * 2 = "p"."ID" * 7 + 1
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST(CAST(("p"."ID" * 7 + 1) / 2 AS Integer) AS NVarChar(11))
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST("p"."ID" AS Double) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	CAST("p"."ID" AS Decimal(38, 10)) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p"."ID"

-- SapHana.Native SapHana
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

