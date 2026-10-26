-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 1
LIMIT 1

-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue TimeStamp -- DateTime2
SET     @DateTimeValue = TIMESTAMP '2001-01-11 01:11:21.1000000'
DECLARE @DateTimeValue2 TimeStamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue TinyInt -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue VarChar(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t1"
SET
	"MoneyValue" = :"MoneyValue",
	"DateTimeValue" = :"DateTimeValue",
	"DateTimeValue2" = :"DateTimeValue2",
	"BoolValue" = :"BoolValue",
	"GuidValue" = :"GuidValue",
	"SmallIntValue" = :"SmallIntValue",
	"IntValue" = :"IntValue",
	"BigIntValue" = :"BigIntValue",
	"StringValue" = :"StringValue"
WHERE
	"t1"."ID" = :"ID"

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = :"ID"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue TimeStamp -- DateTime2
SET     @DateTimeValue = TIMESTAMP '2001-01-11 01:11:21.1000000'
DECLARE @DateTimeValue2 TimeStamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue TinyInt -- Byte
SET     @BoolValue = 1
DECLARE @GuidValue VarChar(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t1"
SET
	"MoneyValue" = :"MoneyValue",
	"DateTimeValue" = :"DateTimeValue",
	"DateTimeValue2" = :"DateTimeValue2",
	"BoolValue" = :"BoolValue",
	"GuidValue" = :"GuidValue",
	"SmallIntValue" = :"SmallIntValue",
	"IntValue" = :"IntValue",
	"BigIntValue" = :"BigIntValue",
	"StringValue" = :"StringValue"
WHERE
	"t1"."ID" = :"ID"

-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 1
LIMIT 1

