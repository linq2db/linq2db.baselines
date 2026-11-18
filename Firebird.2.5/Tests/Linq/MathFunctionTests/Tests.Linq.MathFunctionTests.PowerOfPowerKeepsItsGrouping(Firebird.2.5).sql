-- Firebird.2.5 Firebird
SELECT
	Power(2, Power(CAST(Mod("p".ID, 3) + 1 AS DOUBLE PRECISION), 2))
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
	Power(Power(CAST(Mod("p".ID, 3) + 1 AS DOUBLE PRECISION), 2), 3)
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
	Power(2, CAST(Power(CAST(CAST(Mod("p".ID, 3) + 1 AS Decimal(18, 10)) AS DOUBLE PRECISION), CAST(2 AS DOUBLE PRECISION)) AS Decimal(18, 10)))
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
	Power(2, Power(CAST(Mod("p"."Value1", 3) + 1 AS DOUBLE PRECISION), 2))
FROM
	"Parent" "p"
WHERE
	"p"."Value1" IS NOT NULL
ORDER BY
	"p"."ParentID"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

