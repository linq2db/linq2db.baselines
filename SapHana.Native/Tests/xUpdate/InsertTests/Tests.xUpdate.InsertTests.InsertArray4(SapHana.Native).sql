-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @BoolValue TinyInt -- Byte
SET     @BoolValue = 1
DECLARE @GuidValue VarChar(36) -- AnsiStringFixedLength
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue VarBinary(4) -- Binary
SET     @BinaryValue = x'01020304'
DECLARE @SmallIntValue SmallInt -- Int16
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

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" > 1000

