BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 100

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = 2000,
	"LinqDataTypes"."SmallIntValue" = 200
WHERE
	"LinqDataTypes"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = ?

