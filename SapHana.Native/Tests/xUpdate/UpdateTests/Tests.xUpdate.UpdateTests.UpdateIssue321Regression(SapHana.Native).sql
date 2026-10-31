-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue TimeStamp -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 TimeStamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue TinyInt -- Byte
SET     @BoolValue = NULL
DECLARE @GuidValue VarChar(36) -- AnsiStringFixedLength
SET     @GuidValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 60
DECLARE @BigIntValue BigInt -- Int64
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
	:"ID",
	:"MoneyValue",
	:"DateTimeValue",
	:"DateTimeValue2",
	:"BoolValue",
	:"GuidValue",
	:"SmallIntValue",
	:"IntValue",
	:"BigIntValue",
	:"StringValue"
)

-- SapHana.Native SapHana
DECLARE @value2 Decimal(5, 0)
SET     @value2 = 13621
DECLARE @id Integer -- Int32
SET     @id = 100500

UPDATE
	"LinqDataTypes" "t1"
SET
	"SmallIntValue" = CAST("t1"."MoneyValue" / (:"value2" / "t1"."IntValue") AS SmallInt)
WHERE
	"t1"."ID" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT
	"t1"."SmallIntValue"
FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = :"id"
LIMIT 1

