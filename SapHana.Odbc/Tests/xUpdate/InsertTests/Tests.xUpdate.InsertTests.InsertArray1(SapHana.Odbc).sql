-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	NULL
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1001
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

