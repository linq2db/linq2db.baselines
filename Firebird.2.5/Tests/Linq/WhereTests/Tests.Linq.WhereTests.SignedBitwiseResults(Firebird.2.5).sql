-- Firebird.2.5 Firebird
SELECT
	BIN_NOT("p".ID)
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
	BIN_NOT(CAST("p".ID AS BigInt))
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
	BIN_NOT("p"."SmallIntValue")
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
	Bin_Or("p".ID, -5)
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
	Bin_Xor(CAST("p".ID AS BigInt), -6)
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
	Bin_And("p".ID, -3)
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
	Bin_And("p".ID, 6) - 10
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
	-Bin_And("p".ID, 6)
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
	Bin_And(CAST("p".ID AS BigInt), "p".ID - 10)
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

