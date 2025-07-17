BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @arr VarBinary(4) -- Binary
SET     @arr = x'01020304'

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
	?
)

BeforeExecute
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

