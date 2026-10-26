-- SapHana.Native SapHana
SELECT
	ROUND("p"."MoneyValue", 5) + "p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."MoneyValue" <> 0
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
	CASE
		WHEN "p"."MoneyValue" * 2 = ROUND("p"."MoneyValue" * 2, 5) AND "p"."MoneyValue" <> ROUND("p"."MoneyValue", 5)
			THEN ROUND("p"."MoneyValue" / 2, 5) * 2
		ELSE ROUND("p"."MoneyValue", 5)
	END + "p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."MoneyValue" <> 0
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

