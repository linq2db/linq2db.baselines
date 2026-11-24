-- Firebird.2.5 Firebird
SELECT
	("p".ID * 7 + 1) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	("p".ID * -7 - 1) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	("p".ID * 7 + 1) / ("p".ID - 100)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	(CAST("p".ID AS BigInt) * 9 + 2) / 4
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	(CAST("p".ID AS BigInt) * 7 + 1) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	(CAST("p".ID AS Decimal(10, 0)) * 9 + 2) / 4
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	("p".ID * 7 + 1) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
DECLARE @divisor Integer -- Int32
SET     @divisor = 4

SELECT
	("p".ID * 9 + 2) / CAST(@divisor AS Int)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	-("p".ID * 7 + 1)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	(("p".ID * 7 + 1) / 2) * 2 = "p".ID * 7 + 1
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	(("p".ID * 7 + 1) / 2)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	CAST("p".ID AS DOUBLE PRECISION) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

-- Firebird.2.5 Firebird
SELECT
	CAST("p".ID AS Decimal(18, 10)) / 2
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.2.5 Firebird
SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

