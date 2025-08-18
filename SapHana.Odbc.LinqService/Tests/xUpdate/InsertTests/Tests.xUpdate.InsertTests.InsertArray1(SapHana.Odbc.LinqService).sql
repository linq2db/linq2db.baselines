BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

