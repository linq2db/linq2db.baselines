BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue  -- DateTime2
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2  -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = :"MoneyValue",
	"LinqDataTypes"."DateTimeValue" = :"DateTimeValue",
	"LinqDataTypes"."DateTimeValue2" = :"DateTimeValue2",
	"LinqDataTypes"."BoolValue" = :"BoolValue",
	"LinqDataTypes"."GuidValue" = :"GuidValue",
	"LinqDataTypes"."SmallIntValue" = :"SmallIntValue",
	"LinqDataTypes"."IntValue" = :"IntValue",
	"LinqDataTypes"."BigIntValue" = :"BigIntValue",
	"LinqDataTypes"."StringValue" = :"StringValue"
WHERE
	"LinqDataTypes"."ID" = :"ID"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue  -- DateTime2
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2  -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = :"MoneyValue",
	"LinqDataTypes"."DateTimeValue" = :"DateTimeValue",
	"LinqDataTypes"."DateTimeValue2" = :"DateTimeValue2",
	"LinqDataTypes"."BoolValue" = :"BoolValue",
	"LinqDataTypes"."GuidValue" = :"GuidValue",
	"LinqDataTypes"."SmallIntValue" = :"SmallIntValue",
	"LinqDataTypes"."IntValue" = :"IntValue",
	"LinqDataTypes"."BigIntValue" = :"BigIntValue",
	"LinqDataTypes"."StringValue" = :"StringValue"
WHERE
	"LinqDataTypes"."ID" = :"ID"

