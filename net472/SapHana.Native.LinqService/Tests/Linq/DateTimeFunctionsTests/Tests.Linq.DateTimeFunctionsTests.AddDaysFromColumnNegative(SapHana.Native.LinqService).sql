BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue  -- DateTime2
SET     @DateTimeValue = '2018-01-03'
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = -2
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue",
	"StringValue"
)
VALUES
(
	:"ID",
	:"MoneyValue",
	:"DateTimeValue",
	:"BoolValue",
	:"GuidValue",
	:"BinaryValue",
	:"SmallIntValue",
	:"StringValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- DateTime2
SET     @p1 = '2018-01-02'

SELECT
	Count(*)
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 5000 AND Add_Days("t"."DateTimeValue", "t"."SmallIntValue") < :"p1"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = 5000

