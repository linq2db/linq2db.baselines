BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	?,
	100,
	200
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST("t"."MoneyValue" AS SmallInt),
	"MoneyValue" = CAST("t"."SmallIntValue" AS Decimal(38, 10))
WHERE
	"t"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes" "t"
SET
	"SmallIntValue" = CAST("t"."MoneyValue" AS SmallInt),
	"MoneyValue" = CAST("t"."SmallIntValue" AS Decimal(38, 10))
WHERE
	"t"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = ?
LIMIT 2

