-- SapHana.Native SapHana
SELECT
	Power(2, Power(CAST(MOD("p"."ID", 3) + 1 AS Double), 2))
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
	Power(Power(CAST(MOD("p"."ID", 3) + 1 AS Double), 2), 3)
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
	Power(2, CAST(Power(CAST(CAST(MOD("p"."ID", 3) + 1 AS Decimal(38, 10)) AS Double), CAST(2 AS Double)) AS Decimal(38, 10)))
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
	Power(2, Power(CAST(MOD("p"."Value1", 3) + 1 AS Double), 2))
FROM
	"Parent" "p"
WHERE
	"p"."Value1" IS NOT NULL
ORDER BY
	"p"."ParentID"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

