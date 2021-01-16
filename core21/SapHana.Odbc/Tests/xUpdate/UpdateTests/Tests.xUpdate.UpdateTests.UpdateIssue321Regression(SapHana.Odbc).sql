﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = NULL
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue  -- Int32
SET     @IntValue = 60
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value2  -- Int32
SET     @value2 = 13621
DECLARE @id  -- Int32
SET     @id = 100500

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."SmallIntValue" = Cast(Floor("LinqDataTypes"."MoneyValue" / (? / "LinqDataTypes"."IntValue")) as SmallInt)
WHERE
	"LinqDataTypes"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 100500

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = ?

