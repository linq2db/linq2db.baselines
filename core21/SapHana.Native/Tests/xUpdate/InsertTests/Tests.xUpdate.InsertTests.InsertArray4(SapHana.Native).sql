BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue  -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Binary(4)
SET     @BinaryValue = x'01020304'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 0

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue"
)
VALUES
(
	:"ID",
	:"MoneyValue",
	:"DateTimeValue",
	:"BoolValue",
	:"GuidValue",
	:"BinaryValue",
	:"SmallIntValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

