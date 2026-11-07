-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue TimeStamp -- DateTime2
SET     @DateTimeValue = TIMESTAMP '2018-01-03 00:00:00.0000000'
DECLARE @BoolValue TinyInt -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue VarChar(36) -- AnsiStringFixedLength
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 2
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

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 5000 AND Add_Days("t"."DateTimeValue", "t"."SmallIntValue") > To_Timestamp('2018-01-02 00:00:00.000')

-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 5000

