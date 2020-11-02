BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue  -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2  -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
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

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."ID",
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."BinaryValue",
	"_"."SmallIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	"_"."ID" = 1000
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "_"
WHERE
	"_"."ID" = 1000

