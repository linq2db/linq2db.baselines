-- Firebird.3 Firebird3
SELECT
	Mod("p".ID + 5, 3)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	Mod(100 - "p".ID, 3)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	100 - Mod("p".ID, 3)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	Mod("p".ID + 20, Mod("p".ID * 5 + 3, 5))
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	Mod("p".ID + 20, "p".ID * 3)
FROM
	"LinqDataTypes" "p"
WHERE
	"p".ID > 0
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	Power(CAST(Mod("p".ID, 3) AS DOUBLE PRECISION), 2)
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	Power(2, CAST(Mod("p".ID, 3) AS DOUBLE PRECISION))
FROM
	"LinqDataTypes" "p"
ORDER BY
	"p".ID

-- Firebird.3 Firebird3
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

